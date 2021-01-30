import 'package:flutter/material.dart';
import 'package:flutter_application_1/data.dart';
class CardDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack
    (
      children: <Widget>[
        Align(alignment: Alignment.topLeft,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            width: 250,
            child: Image.asset('assets/mastercardlogo.png')),
        ),
        Align(alignment: Alignment.bottomRight,
          child: Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(color: primaryColor,boxShadow: customShadow,
            borderRadius: BorderRadius.circular(20)),
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            
            
            
            ),
        ),
        Align(alignment: Alignment.bottomLeft,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget> [
                Row(children:<Widget> [
                  Text('***** **** ****',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                  Text('1958',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                  
                ],),

                Text('PLATINUM CARD',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              ],),
            ),
        ),

      ],  
    );
  }
}