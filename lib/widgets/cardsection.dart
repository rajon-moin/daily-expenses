import 'package:flutter/material.dart';
import 'package:flutter_application_1/data.dart';
import 'package:flutter_application_1/widgets/carddetails.dart';

class CardSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children:<Widget> [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.topLeft,
        child: Text("Selected Cards",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20),)),
        Expanded(child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (cntext,i){
          return Container(
            height: 200,
            width: MediaQuery.of(context).size.width-40,
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            decoration: BoxDecoration(color: primaryColor,
              boxShadow: customShadow,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Stack(children: <Widget>[
              Positioned.fill(
                
                top: 150,
                bottom: -200,
                child: Container
                ( 
                decoration: BoxDecoration(
                  
                  boxShadow: customShadow,
                  shape:BoxShape.circle,
                  color: Colors.white38
                ),  

              ),),  
              
              Positioned.fill(
                left: -120,
                top: -50,
                bottom: -50,
                child: Container
                ( 
                decoration: BoxDecoration(
                  
                  boxShadow: customShadow,
                  shape:BoxShape.circle,
                  color: Colors.white38
                ),  

              ),),

              CardDetails()  
            ],),
          );
        },),)
      ],
    );
  }
}