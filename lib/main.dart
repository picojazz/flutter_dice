import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
Random ran = new Random();
class _MyAppState extends State<MyApp> {
  
  int dice1 = 1 + ran.nextInt(6);
  int dice2 = 1+ ran.nextInt(6);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text("PICOJAZZ DICE",style:TextStyle(fontSize: 25.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Image.asset("images/$dice1.png",width: 70.0,height: 70.0),
                  ),
                  Image.asset("images/$dice2.png",width: 70.0,height: 70.0)
                ],
              ),
              
              RaisedButton(
                child: Text("Roll the dice",style: TextStyle(color: Colors.black)),
                
                onPressed: (){
                    setState(() {
                      dice1 = 1 + ran.nextInt(6);
                      dice2 = 1 + ran.nextInt(6);
                    });

                },
              )
            ],
          )
        )
      ),
    );
  }
}