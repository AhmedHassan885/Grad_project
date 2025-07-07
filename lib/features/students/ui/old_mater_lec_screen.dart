import 'package:flutter/material.dart';
import 'package:grad_project/core/network/download_and_open_file.dart';
import 'package:grad_project/core/resource_manager/app_color.dart';
import 'package:grad_project/features/students/data/model/all_material_model/AllMaterialModel.dart';
import 'package:grad_project/features/students/ui/widgets/old_material_container.dart';

class OldLectureScreen extends StatelessWidget {
  final AllMaterialModel material;

  const OldLectureScreen({super.key, required this.material});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              color: const Color(0xff022D4F),
            ),
            Expanded(child: Container(color: Colors.white)),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 100,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 50,
                ),
                Container(
                  width: 33,
                  height: 33,
                  decoration: BoxDecoration(
                      color: const Color(0xffDEDEDE),
                      borderRadius: BorderRadius.circular(10)),
                  child: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.arrow_back_ios,
                          color: AppColor.dark_blue)),
                ),
                 const SizedBox(width: 30),
                Column(
                  children: [
                    const Text(
                      'Old Material ',

                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text("${material.title}", style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),),
                  ],
                ),
              ],
            ),
             const SizedBox(height: 70),
            Center(
              child: GestureDetector(
                onTap: () {
                  downloadAndOpenFile(context,material.materialLink ?? "");
                },
                child: OldMaterialsContainers(
                  filename: material.materialName ?? "Untitled",
                  icon: Icons.file_present,
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}

// class OldMaterialsContainers extends StatelessWidget {
//   const OldMaterialsContainers({
//     super.key,
//     required this.filename,
//     required this.icon,
//   });
//   final String filename;
//   final IconData icon;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 330,
//       height: 130,
//       margin: const EdgeInsets.symmetric(vertical: 8),
//       padding: const EdgeInsets.only(left: 12, right: 12, bottom: 5, top: 16),
//       decoration: BoxDecoration(
//         boxShadow: [BoxShadow(color: Color(0xffE2E8F0), blurRadius: 3)],
//         color: const Color(0xFFF4F9FA),
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Column(
//         children: [
//           SizedBox(
//             height: 10,
//           ),
//           Icon(icon, size: 50, color: Colors.grey),
//           Spacer(),
//           Divider(),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 filename,
//                 style: const TextStyle(fontSize: 16),
//               ),
//               const Icon(Icons.more_horiz, color: Colors.grey),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
