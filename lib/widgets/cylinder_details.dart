import 'package:flutter/material.dart';
import 'package:igl_app/theme/cylinder_card.dart';
import 'package:igl_app/models/cylinder_model.dart';

class CylinderDetailsPage extends StatefulWidget {
  const CylinderDetailsPage({super.key});

  @override
  State<CylinderDetailsPage> createState() => _CylinderDetailsPageState();
}

class _CylinderDetailsPageState extends State<CylinderDetailsPage> {
  final List<CylinderModel> cylinders = [
    CylinderModel(
      serialNo: "CYL00001",
      gasType: "Gas Type 1",
      condition: "Normal",
      status: "IN",
    ),
    CylinderModel(
      serialNo: "CYL00002",
      gasType: "Gas Type 1",
      condition: "Normal",
      status: "IN",
    ),
    CylinderModel(
      serialNo: "CYL00003",
      gasType: "Gas Type 2",
      condition: "Deposit",
      status: "OUT",
    ),
    CylinderModel(
      serialNo: "CYL00004",
      gasType: "Gas Type 2",
      condition: "Outright",
      status: "IN",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: cylinders.length,
          itemBuilder: (context, index) {
            return CylinderCard(cylinder: cylinders[index]);
          },
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 🔥 Open Add Cylinder Screen
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
