import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  //required this.calculateBMI
  final int height;
  final int weight;

  double _bmi = 0;

  //final Function()? calculateBMI;

  String? calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(2);
  }

  String? getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String? getFeedback() {
    if (_bmi >= 25) {
      return 'You\'ve a higher than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You\'ve a normal body weight. Good Job!';
    } else {
      return 'You\'ve a lower than normal body weight. You can eat a bit more.';
    }
  }
}
