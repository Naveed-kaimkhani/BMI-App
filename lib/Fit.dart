
import 'package:flutter/material.dart';

class Fit extends StatelessWidget {
  final obj5;
  Fit(this.obj5);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.green[200],
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.only(top:40.0)),
              Container(
                height: 200,
                width: 200,

                   child:Image.asset("assets/fit.png",fit: BoxFit.contain)
                  ),

                  Padding(padding: EdgeInsets.only(top: 20.0)),
                  Text("Your BMI is ${obj5.resultvalue}",style: TextStyle(
                    fontSize: 35.0,
                    fontWeight:FontWeight.w700,
                    color: Colors.green[900],
                  ),),
                  
                  Text(obj5.comment,style: TextStyle(
                    fontSize: 18.0,
                    fontWeight:FontWeight.bold,
                               
                  ),),
                   Padding(padding: EdgeInsets.only(top: 40.0)),

                  Container(
                    margin: EdgeInsets.all(20.0),
                    width: 500,
                    height: 120,
                  //  color: Colors.green[900],
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                      boxShadow: [
                        BoxShadow(
                           //Color: Colors.green[900],
                          color: Colors.green,
                         // blurRadius: 5,
                        )
                      ]
                    ),
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      child: Text("Cheers.!!\nA BMI at ${obj5.resultvalue} indicates that you are at a healthy weight for your height keep it remain by Continue your daily diet as going ",style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                                      
                      ),),
                    ),
                  ),

                   Padding(padding: EdgeInsets.only(top: 50.0)),
           ElevatedButton.icon(
                 icon: Icon(Icons.arrow_back_ios),
                 onPressed: (){Navigator.pop(context);},

                  label: Text("Back"),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(200, 35),
                    primary: Colors.green[700],
                    textStyle: TextStyle(fontSize: 20.0),
                  ),
                  ),
        
            ],

          ),
        ),
      ),
    );
  }
}