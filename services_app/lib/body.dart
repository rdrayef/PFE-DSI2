import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:services_app/services.dart';

import 'dashboard.dart';

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
      children: <Widget>[
        Container(child: Dashboard()), Container(
            margin:EdgeInsets.only(top:200),
            child: Padding(
              child: Service(),

              padding: EdgeInsets.all(10),
            ) 
        )],
    ));
  }
}
