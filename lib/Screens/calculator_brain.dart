import 'dart:math';
class Calculator{
  Calculator({this.height,this.weight});

  final int height;
  final int weight;
  double _Bmi;
  String calculateBmi()
  {
     _Bmi = weight/pow(height/100,2);

     return _Bmi.toStringAsFixed(1);
  }


  String GetResult(){
     if(_Bmi > 25)
       return "OverWeight";
     else if(_Bmi > 18.5)
       return "Normal";
     else{
       return "UnderWeight";
     }
  }

  String getInterpretation(){
    if(_Bmi >= 25)
      return "You have a higher weight . Try to exercise";
    else if(_Bmi > 18.5)
      return "You have Normal body weight. Good Job";
    else{
      return "You Have a lower body weight. You can eat a bit more";
    }
  }
}