class Company {
  final String code;
  final String name;

  Company({required this.code, required this.name});

  factory Company.fromMap(Map<String, dynamic> m) {
    return Company(
      code: m['code'] as String,
      name: m['name'] as String,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'code': code,
      'name': name,
    };
  }
}
