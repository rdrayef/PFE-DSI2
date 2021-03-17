import 'package:accueil/accueil/menu.dart/menu.dart';
import 'package:accueil/colors.dart';
import 'package:accueil/notification/page.dart';
import 'package:flutter/material.dart';

class Notificatio extends StatefulWidget {
  @override
  _NotificatioState createState() => _NotificatioState();
}

class _NotificatioState extends State<Notificatio> {
  int nombre = 4;
  int id = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: new AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text("Notifications",
              style: TextStyle(color: bluecolor, fontSize: 26)),
          centerTitle: true,
          leading: IconButton(
              icon: Icon(
                Icons.keyboard_arrow_left,
                color: bluecolor,
                size: 31,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              }),
        ),
        body: getbody());
  }
}
