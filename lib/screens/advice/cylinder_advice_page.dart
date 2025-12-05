import 'package:flutter/material.dart';
import 'package:igl_app/widgets/customer_details.dart';
import 'package:igl_app/widgets/cylinder_details.dart';

class CylinderAdvicePage extends StatefulWidget {
  const CylinderAdvicePage({super.key});

  @override
  State<CylinderAdvicePage> createState() => _CylinderAdvicePageState();
}

class _CylinderAdvicePageState extends State<CylinderAdvicePage>
    with SingleTickerProviderStateMixin {
  late final TabController controller;

  @override
  void initState() {
    controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cylinder Advice"),
        bottom: TabBar(
          controller: controller,
          tabs: const [
            Tab(text: "Customer Details"),
            Tab(text: "Cylinder Details"),
            Tab(text: "Summary"),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: const [
          CustomerDetailsForm(),
          CylinderDetailsPage(),
          Center(child: Text("Summary")),
        ],
      ),
    );
  }
}
