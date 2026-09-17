import 'package:calculator/number_panel.dart';
import 'package:calculator/operations_panel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  void _onPressed(){

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
            NumberPanel(),
            OperationsPanel()
          ]
        ),
        ElevatedButton(child: Icon(CupertinoIcons.equal), onPressed: _onPressed)
      ]
    );
  }


}