import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:services_app/services.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Service extends StatelessWidget {
  singleCard(iconcode, icontitle) {
    return GestureDetector(
      onTap: () => {},
      child: Card(
        color: Colors.blueGrey[50],
        elevation: 7,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: InkWell(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                iconcode,
                size: 70,
                color: Colors.deepPurple[700],
              ),
              Text(
                icontitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.deepPurple[900],
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.deepOrangeAccent[700],
                size: 25,
              )
            ],
          ),
        ),
        shadowColor: Colors.blueGrey,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      primary: false,
      children: <Widget>[
        singleCard(Icons.support_agent_rounded, 'Assistance'),
        singleCard(Icons.home_work_outlined, 'Agences'),
        singleCard(Icons.car_repair, 'Conseils de Sinistre'),
        singleCard(Icons.perm_phone_msg, 'Contact'),
        singleCard(Icons.question_answer_rounded, 'FAQ')
      ],
    );
  }
}
