import 'package:flutter/material.dart';
import 'widgets/header.dart';
import 'widgets/cardsection.dart';
import 'data.dart';
import 'widgets/expenses.dart';
void main(){
  runApp(MaterialApp(
    home:HomePage(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Circular'),
    ));
  
  
}


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
       body: Column(
         children: <Widget>[
           SizedBox(height: 20,),
           Container(height: 120,
            child: WalletHeader(),
           
           ),
           Expanded(child: CardSection(),),
           Expanded(child: ExpenSes(),),
       ],),
    );
  }
}
