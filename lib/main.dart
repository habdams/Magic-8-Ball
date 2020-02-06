import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );
class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[400],
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
      body: Ball(),
    );

  }
}
 class Ball extends StatefulWidget {
   @override
   _BallState createState() => _BallState();
 }

 class _BallState extends State<Ball> {
  int ballNumber = 1;

   @override
   Widget build(BuildContext context) {
     return Center(
       child: FlatButton(
         onPressed:(){
           setState(() {
             ballNumber = Random().nextInt(4)+1;
           });
           print(ballNumber);
           },
           child: Image.asset('images/ball$ballNumber.png'),
       ),
     );
   }
 }
