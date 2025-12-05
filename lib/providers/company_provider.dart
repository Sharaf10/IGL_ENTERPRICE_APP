import 'package:flutter/material.dart';
import '../models/company.dart';

class CompanyProvider extends ChangeNotifier {
  Company? _currentCompany;
  List<Company> _companies = [];

  Company? get currentCompany => _currentCompany;
  List<Company> get companies => List.unmodifiable(_companies);

  // Example: seed two companies (IGL, GW)
  void seedCompanies() {
    if (_companies.isEmpty) {
      _companies = [
        Company(code: 'IGL', name: 'Industrial Gases (Pvt) Ltd'),
        Company(code: 'GW', name: 'Gas World'),
      ];
      // default to first company
      _currentCompany = _companies.first;
      notifyListeners();
    }
  }

  void setCompany(Company company) {
    if (_currentCompany?.code != company.code) {
      _currentCompany = company;
      notifyListeners();
    }
  }

  Company? companyByCode(String code) {
    try {
      return _companies.firstWhere((c) => c.code == code);
    } catch (_) {
      return null;
    }
  }

  void addCompany(Company company) {
    _companies.add(company);
    notifyListeners();
  }
}
