import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

typedef double Operation(double op1, double op2);
typedef void OperationCallback(Operation operation);

class OperationButton extends StatelessWidget {
  final Operation operation;
  final IconData icon;
  final OperationCallback callback;

  OperationButton(this.operation, this.icon, this.callback); 
  
  void _onPressed(){
    callback(this.operation);
  }

  @override
  Widget build(BuildContext build){
    return ElevatedButton(
      onPressed: _onPressed,
      child: Icon(this.icon)
    );
  }
}

class OperationsPanel extends StatelessWidget {
  Operation? operation;
  final OperationCallback callback;

  OperationsPanel(this.callback);

  void _setOperation(Operation operation){
    this.operation = operation;
    this.callback(operation);
  }


  @override 
  build(BuildContext build){
    return Column(
      mainAxisAlignment: .center,
      children: [
        OperationButton((op1, op2) => op1 + op2, Icons.add, _setOperation),
        OperationButton((op1, op2) => op1 - op2, Icons.remove, _setOperation),
        OperationButton((op1, op2) => op1 * op2, Icons.close, _setOperation),
        OperationButton((op1, op2) => op1 / op2, CupertinoIcons.divide, _setOperation),
      ]
    );
  }
}