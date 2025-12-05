class CylinderModel {
  final String serialNo;
  final String gasType;
  final String condition;
  final String status; // IN or OUT

  CylinderModel({
    required this.serialNo,
    required this.gasType,
    required this.condition,
    required this.status,
  });
}
