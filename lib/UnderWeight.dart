import 'package:flutter/material.dart';

class UnderWeight extends StatelessWidget {
  final obj4;
  UnderWeight(this.obj4);
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

                   child:Image.asset("assets/man.png",fit: BoxFit.contain)
                  ),

                  Padding(padding: EdgeInsets.only(top: 20.0)),
                  Text("Your BMI is ${obj4.resultvalue}",style: TextStyle(
                    fontSize: 35.0,
                    fontWeight:FontWeight.w700,
                    color: Colors.green[900],
                  ),),
                  
                  Text(obj4.comment,style: TextStyle(
                    fontSize: 18.0,
                    fontWeight:FontWeight.bold,
                    color: Colors.red,
                               
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
                         
                          color: Colors.green,
            
                        )
                      ]
                    ),
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      child: Text("Sadlyy.\nA BMI at ${obj4.resultvalue} indicates that you are underweight. A good BMI can be achieved by adding fruit and faty in your diet. ",style: TextStyle(
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