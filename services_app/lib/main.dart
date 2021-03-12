import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:services_app/body.dart';
import 'package:services_app/services.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          title: Text('Services',
              style: TextStyle(
                  fontSize: 25,
                  backgroundColor: Colors.transparent,
                  color: Colors.deepPurple[900])),
          centerTitle: true,
          leading: new IconButton(
              icon: new Icon(
                Icons.arrow_back_ios_sharp,
                color: Colors.deepPurple[900],
              ),
              onPressed: () {}),
        ),
        body: Content(),
        /*SafeArea(
          child: Row(
            children: [
              Container(
                child: Column(
            children: [
            Container(
              child: Dashboard(),
          ),
              Container(
              child: service(),
          ),
            ],
              ),
              ),
            ],
          ),
        )*/
      ),
    );
  }
}
