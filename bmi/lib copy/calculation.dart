import 'dart:math';

class Calculation {
  Calculation({required this.weigth, required this.heigth});

  final int heigth;
  final int weigth;
  double? bmi;
  String getbmi() {
    bmi = weigth / pow(heigth / 100, 2);
    return bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (bmi! >= 25) {
      return "Over Weight ";
    } else if (bmi! >= 18.5) {
      return "Normal";
    } else {
      return "UnderWeight";
    }
  }

  String getSuggestion() {
    if (bmi! >= 25) {
      return "You have to work on you self ";
    } else if (bmi! >= 18.5) {
      return "Your are doing Great keep it up!!";
    } else {
      return "You should have to eat more !!";
    }
  }
}
