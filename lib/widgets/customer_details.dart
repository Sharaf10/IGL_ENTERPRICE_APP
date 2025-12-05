import 'package:flutter/material.dart';
import 'package:igl_app/theme/app_colors.dart';
import 'package:igl_app/theme/app_styles.dart';
import 'package:igl_app/theme/app_text_field.dart';
import 'package:igl_app/models/customer.dart';

class CustomerDetailsForm extends StatefulWidget {
  const CustomerDetailsForm({super.key});

  @override
  State<CustomerDetailsForm> createState() => _CustomerDetailsFormState();
}

class _CustomerDetailsFormState extends State<CustomerDetailsForm> {
  // Controllers
  final sapController = TextEditingController();
  final vehicleController = TextEditingController();
  final remarksController = TextEditingController();

  String deliveryMode = "Collected";
  Customer? selectedCustomer;

  final customers = [
    Customer(id: "1", name: "Customer 1"),
    Customer(id: "2", name: "Customer 2"),
    Customer(id: "3", name: "Customer 3"),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              // Customer Dropdown
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Customer"),
                  const SizedBox(height: 5),
                  DropdownButtonFormField<Customer>(
                    value: selectedCustomer,
                    hint: const Text("Value"),
                    items: customers
                        .map((e) => DropdownMenuItem(
                      value: e,
                      child: Text(e.name),
                    ))
                        .toList(),
                    onChanged: (value) {
                      setState(() => selectedCustomer = value);
                    },
                  ),
                  const SizedBox(height: 16),
                ],
              ),

              // SAP Order Number
              AppTextField(
                label: "SAP Order Number",
                controller: sapController,
                suffix: const Icon(Icons.search),
              ),

              // Vehicle Number
              AppTextField(
                label: "Vehicle Number",
                controller: vehicleController,
              ),

              // Remarks
              AppTextField(
                label: "Remarks",
                controller: remarksController,
              ),

              // Delivery Mode
              Row(
                children: [
                  Radio(
                    value: "Delivery",
                    groupValue: deliveryMode,
                    onChanged: (value) =>
                        setState(() => deliveryMode = value!),
                  ),
                  const Text("Delivery"),
                  const SizedBox(width: 20),
                  Radio(
                    value: "Collected",
                    groupValue: deliveryMode,
                    onChanged: (value) =>
                        setState(() => deliveryMode = value!),
                  ),
                  const Text("Collected")
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

