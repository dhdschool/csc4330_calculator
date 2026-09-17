import "package:flutter/material.dart";

typedef void IntCallback(int val);

class NumberButton extends StatelessWidget{
    final IntCallback callback;
    final int number;

    NumberButton(this.number, this.callback);

    void _onPressed(){
      callback(this.number);
    } 
    
    @override
    Widget build(BuildContext build){
      return ElevatedButton(
        onPressed: _onPressed,
        child: Text(this.number.toString())
      );
    } 
}

class NumberPanel extends StatelessWidget{
    int? selectedNumber;
    List<NumberButton> buttons = [];
    final IntCallback callback;

    NumberPanel(this.callback);

    _setNumber(int selectedNumber){
      this.selectedNumber = selectedNumber;
      this.callback(selectedNumber);
    }

    @override
    Widget build(BuildContext build){
      
      for (int i=0; i<10; i++){
        buttons.add(NumberButton(i, _setNumber));
      }

      return Column(
        mainAxisAlignment: .center,
        children: [
          Row(
            children: [buttons[1], buttons[2], buttons[3]],
            mainAxisAlignment: .center,
          ),
          Row(
            children: [buttons[4], buttons[5], buttons[6]],
            mainAxisAlignment: .center,
          ),
          Row(
            mainAxisAlignment: .center,
            children: [buttons[7], buttons[8], buttons[9]]
          ),
          Row(
            mainAxisAlignment: .center,
            children: [            buttons[0]            ]
          ),
        ]
      ); 
    }
}