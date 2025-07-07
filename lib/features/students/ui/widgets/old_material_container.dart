import 'package:flutter/material.dart';
class OldMaterialsContainers extends StatelessWidget {
  const OldMaterialsContainers({
    super.key,
    required this.filename,
    required this.icon,
  });

  final String filename;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(

        height: 130,
        margin: const EdgeInsets.symmetric(vertical: 8),
        padding: const EdgeInsets.only(left: 12, right: 12, bottom: 5, top: 16),
        decoration: BoxDecoration(
          boxShadow: const [BoxShadow(color: Color(0xffE2E8F0), blurRadius: 3)],
          color: const Color(0xFFF4F9FA),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            const SizedBox(height: 10),
            Icon(icon, size: 50, color: Colors.grey),
            const Spacer(),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(filename, style: const TextStyle(fontSize: 16)),
                const Icon(Icons.more_horiz, color: Colors.grey),
              ],
            )
          ],
        ),
      ),
    );
  }
}