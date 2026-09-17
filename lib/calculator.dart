import 'package:calculator/number_panel.dart';
import 'package:calculator/operations_panel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  String result = "";
  Operation? currentOperation;
  int? firstNumber;
  int? secondNumber;
  double? resultWaiting;


  void _setNum(int num){
    if(firstNumber == null){
      this.firstNumber = num; 
    }
    else if (secondNumber == null){
      this.secondNumber = num;
    }
    else{
      this.firstNumber = this.secondNumber;
      this.secondNumber = num;
    }
  }

  void _setOp(Operation op){
    this.currentOperation = op;
  }

  void _onPressed(){
    if(this.firstNumber != null && this.secondNumber != null && this.currentOperation != null){
      resultWaiting = currentOperation!(firstNumber!.toDouble(), secondNumber!.toDouble());
    }
    firstNumber = null;
    secondNumber = null;
    currentOperation = null;
    result = resultWaiting!.toString();
  }

  @override build(BuildContext build){
    return Column( 
      mainAxisAlignment: .center,
      spacing: 10,
      children: [
        Row(
          mainAxisAlignment: .center,
          spacing: 10,
          children: [
            NumberPanel(_setNum),
            OperationsPanel(_setOp)
          ]
        ),
        ElevatedButton(child: Icon(CupertinoIcons.equal), onPressed: _onPressed),
        Text(result)
      ]
    );
  }


}