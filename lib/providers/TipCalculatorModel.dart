import 'package:flutter/material.dart';

class TipCalculatorModel with ChangeNotifier {
  int _personCount = 1;
  double _tipPercentage = 0.0;
  double _billTotal = 0.0;

  // Getter to retrieve the current state
  double get billTotal => _billTotal;
  double get tipPercentage => _tipPercentage;
  int get personCount => _personCount;

  void updateBillTotal(double billTotal) {
    _billTotal = billTotal;
    notifyListeners();
  }

  void updateTipPercentage(double tipPercentage) {
    _tipPercentage = tipPercentage;
    notifyListeners();
  }

  void updatePersonCount(int personCount) {
    _personCount = personCount;
    notifyListeners();
  }

  double get totalPerPerson =>
      ((_billTotal * _tipPercentage) + (_billTotal)) / _personCount;
}
