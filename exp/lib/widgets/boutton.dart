import 'dart:ui';

import 'package:flutter/material.dart';
// ignore: camel_case_types
class orgbutton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color textColors;
  final Color bgcolor;

  const orgbutton({Key key, @required this.text,@required this.onPressed,@required this.textColors,@required this.bgcolor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                height:40,
                width:300,
                child: RaisedButton(
                color: bgcolor,
                onPressed: (){
                Navigator.of(context).pushNamed('logine');
                },
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                child: Text(
                  text,
                  style: TextStyle(color: textColors,fontSize: 20 ), 
                  ),
              ),
              );

  }
}