import 'dart:math';

class Calculation {
  Calculation({this.heigth, this.weigth});

  final int heigth;
  final int weigth;

  double _bMI;

  String calculatBMI() {
    _bMI = weigth / pow(heigth / 100, 2);
    return _bMI.toStringAsFixed(1);
  }

  String getval() {
    if (_bMI >= 25) {
      return 'OverWeight';
    } else if (_bMI > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String description() {
    if (_bMI >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bMI >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
