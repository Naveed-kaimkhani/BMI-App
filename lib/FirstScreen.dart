import 'package:bmiapp/BMI_Model.dart';
import 'package:flutter/material.dart';

import 'Fit.dart';
import 'ResultScreen.dart';
class FirstScreen extends StatefulWidget {
  const FirstScreen({ Key? key }) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
    double heightvalue=100.0;
     double weightvalue=60.0;
     double result=0.1;

    BMI_Model? obj;
  
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
       crossAxisAlignment:CrossAxisAlignment.center,
            children: [
              Container(
                height: 250,
                width: 250,
                  child: Image.asset("assets/dumble.png",fit: BoxFit.contain,),

              ),
                Text("BMI Calculator",style: TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.bold
              ),),  
              
              Text("Eat healthy Stay healthy",style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w700
              ),),  
              
              Padding(padding: EdgeInsets.only(top: 30.0)),
              Text("Height (cm)",style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.normal,
              ),),  

              Slider(
                value: heightvalue,
                min: 54.0,
               max: 200.0, 
               label: "$heightvalue",
               divisions: 100,
               activeColor: Colors.green[700],
               onChanged: (height){
                 setState(() {
                   heightvalue=height;
                 });
               }
              ),
                     
               Text("$heightvalue cm",
               style: TextStyle(
                color: Colors.green[800],
                fontSize: 20,
                fontWeight: FontWeight.w700
              ),),  
              
               Padding(padding: EdgeInsets.only(top: 25.0)),
                 Text("Weight (kg)",style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.normal,
              ),),  

               Slider(
                value: weightvalue,
                min: 30.0,
               max: 120.0, 
               label: "$weightvalue",
               divisions: 100,
               activeColor: Colors.green[800],
               onChanged: (weight){
                 setState(() {
                   weightvalue=weight;
                 });
               }
              ),
              Text("$weightvalue kg",
               style: TextStyle(
                color: Colors.green[700],
                fontSize: 20,
                fontWeight: FontWeight.w700
              ),),  

                Padding(padding: EdgeInsets.only(top: 30.0)),
               
               ElevatedButton.icon(
                 icon: Icon(Icons.favorite),
                 onPressed: (){
                   setState(() {
                     result=weightvalue/((heightvalue/100*heightvalue/100)).round(); 
                     
                     if(result>=18.0 && result<=25.0)
                     {
                           obj=BMI_Model(result, true, "You are totally Fit");
                     }
                                          
                    else if(result<18.0)
                     {
                           obj=BMI_Model(result, false, "You are UnderWeight");
                     }
                      else if(result>25.0)
                     {
                           obj=BMI_Model(result, false, "You are OverWeight");
                     }

                     
                     Navigator.push(context, MaterialPageRoute(
                       builder: (context)=>ResultScreen(obj),
                       ),
                       ); //navigator.push
                                          
                   }
                 
                   );  
                 }, //onpressed
                 
                  label: Text("Calculate"),
                  style: ElevatedButton.styleFrom(
                    //alignment: Alignment(x, y)
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