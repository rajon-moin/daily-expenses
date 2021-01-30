import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/data.dart';


class PieChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: Container(
        height: 100,
        width: 200,
        decoration: BoxDecoration(shape: BoxShape.circle,boxShadow: customShadow,color: primaryColor),
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomPaint(
              child: Container(),
              foregroundPainter: PieChartPainter(),
              ),
          ),
          Center(
            child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(shape: BoxShape.circle,boxShadow: customShadow,color: primaryColor),),
          )
        ],),
         
      ),
    );
  }
  
}

class PieChartPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Offset center =Offset(size.width/2,size.height/2);
    double radius = min(size.width/2,size.height/2); 
    var paint = new Paint()..style=PaintingStyle.stroke..strokeWidth=50;
    double total=0;
    expenses.forEach((element ){
      total+=element['amount'];
    });
    var startRadian = -pi/2;
    for(int i=0;i<expenses.length;i++){
      var currentExpenses = expenses[i];
      var sweepRadian = (currentExpenses['amount']/total*2*pi);
      paint.color=pieColors[i];
      canvas.drawArc(Rect.fromCircle(center: center, radius: radius),
          startRadian, sweepRadian, false, paint);
      startRadian += sweepRadian;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }

}