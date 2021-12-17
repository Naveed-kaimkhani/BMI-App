import 'package:flutter/material.dart';
import 'Fit.dart';
import 'OverWeight.dart';

import 'UnderWeight.dart';

class ResultScreen extends StatelessWidget {
  final obj2;
   ResultScreen(this.obj2);
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.green[200],
      body: Container(
                child:obj2.resultvalue>=18.0 && obj2.resultvalue<=25.0? Fit(obj2)                  
                
                : obj2.resultvalue<18.0? UnderWeight(obj2) : OverWeight(obj2),
     
                
                ),
  
          
        );
   
  }
}