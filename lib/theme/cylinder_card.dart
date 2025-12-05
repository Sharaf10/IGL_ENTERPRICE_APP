import 'package:flutter/material.dart';
import '../models/cylinder_model.dart';

class CylinderCard extends StatelessWidget {
  final CylinderModel cylinder;

  const CylinderCard({super.key, required this.cylinder});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            // LEFT CONTENT
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cylinder.serialNo,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),

                Text(
                  cylinder.gasType,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black87,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  cylinder.condition,
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),

            // RIGHT BADGE
            Container(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 14),
              decoration: BoxDecoration(
                color: cylinder.status == "IN"
                    ? Colors.green.shade100
                    : Colors.red.shade100,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                cylinder.status,
                style: TextStyle(
                  color: cylinder.status == "IN"
                      ? Colors.green.shade800
                      : Colors.red.shade800,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
