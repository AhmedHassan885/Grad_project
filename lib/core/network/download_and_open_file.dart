// ignore_for_file: use_build_context_synchronously

import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';

Future<void> downloadAndOpenFile(BuildContext context, String relativeUrl) async {
  final baseUrl = "https://9902bcdd27ca.ngrok-free.app/api";
  final fullUrl = baseUrl + relativeUrl;

  try {
    // تحديد المسار
    Directory directory = await getApplicationDocumentsDirectory();
    String fileName = relativeUrl.split("/").last;
    String filePath = "${directory.path}/$fileName";
    File file = File(filePath);

    // ✅ لو الملف موجود بالفعل
    if (await file.exists()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("📂 File already exists at:\n$filePath"),
          backgroundColor: Colors.blue,
          duration: Duration(seconds: 4),
        ),
      );

      await OpenFile.open(filePath);
      return;
    }

    // 🔁 عرض جاري التحميل
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("🔁 Downloading file..."),
        backgroundColor: Colors.orange,
        duration: Duration(seconds: 2),
      ),
    );

    // تحميل الملف
    Dio dio = Dio();
    await dio.download(fullUrl, filePath);

    // تم التحميل
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("✅ File downloaded to:\n$filePath"),
        backgroundColor: Colors.green,
        duration: Duration(seconds: 4),
      ),
    );

    // محاولة فتح الملف
    final result = await OpenFile.open(filePath);

    if (result.type == ResultType.noAppToOpen) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("❌ No app found to open this file"),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 3),
        ),
      );
    }
  } catch (e) {
    //  خطأ في التحميل او الفتح
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("❌ Error downloading/opening file:\n$e"),
        backgroundColor: Colors.red,
        duration: Duration(seconds: 4),
      ),
    );
  }
}