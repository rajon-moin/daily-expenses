import 'package:flutter/material.dart';
import 'package:flutter_application_1/data.dart';
import 'package:flutter_application_1/widgets/piechart.dart';

class ExpenSes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children:<Widget> [
        
        Container(
          margin: EdgeInsets.symmetric(horizontal: 40),
          child: Text("Expenses",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35))),
        Row(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: expenses
                      .map((value) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: [
                              CircleAvatar(
                                radius: 5,
                                backgroundColor: pieColors[expenses.indexOf(value)],
                                
                              ),
                              SizedBox(width: 20,),
                              Text(value['name'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15))
                            ]),
                      ))
                      .toList(),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: PieChart(),
            )
          ],
        ),
      ],
    );
  }
}
