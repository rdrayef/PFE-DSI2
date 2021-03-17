import 'package:accueil/accueil/body.dart';
import 'package:accueil/colors.dart';
import 'package:accueil/constat/page_constat.dart';
import 'package:accueil/notification/home.dart';
import 'package:flutter/material.dart';

//import 'package:flutter_svg/flutter_svg.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Body(),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          actions: <Widget>[
            Builder(
              builder: (context) => IconButton(
                icon: Image.asset("assets/icons/icone_menu.png"),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
            ),
            Row(children: [
              IconButton(
                icon: Icon(
                  Icons.notifications_active,
                  color: Colors.white, //rougggecolor
                ),
                onPressed: () {},
              ),
            ]),
            Spacer(),
            Text("ID :xxxxxx ",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: griscolor)),
          ],
        ),
        drawer: ClipPath(
          clipper: Drawermenu(),
          child: Drawer(
            child: Container(
              color: bluecolor,
              child: Column(
                children: <Widget>[
                  // const EdgeInsets.only(bottom: 24.0),
                  ListTile(
                    leading: Icon(Icons.people, color: Colors.white),
                    contentPadding: EdgeInsets.fromLTRB(80, 60.0, 0.0, 0.0),
                    title: Text(
                      'Profile',
                      style: Theme.of(context).textTheme.headline5.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    onTap: () => {},
                  ),
                  ListTile(
                    leading:
                        Image.asset("assets/icons/icons8-dupliquer-24.png"),
                    contentPadding: EdgeInsets.fromLTRB(80, 60.0, 0.0, 0.0),
                    title: Text(
                      'Constats',
                      style: Theme.of(context).textTheme.headline5.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Constat(),
                          ))
                    },
                  ),
                  ListTile(
                    leading: Image.asset(
                        "assets/icons/icons8-document-statistique-24.png"),
                    contentPadding: EdgeInsets.fromLTRB(80, 60.0, 0.0, 0.0),
                    title: Text(
                      'Documents',
                      style: Theme.of(context).textTheme.headline5.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    onTap: () => {Navigator.of(context).pop()},
                  ),
                  ListTile(
                    leading: Image.asset("assets/icons/icons8-service-24.png"),
                    contentPadding: EdgeInsets.fromLTRB(80, 60.0, 0.0, 0.0),
                    title: Text(
                      'Services',
                      style: Theme.of(context).textTheme.headline5.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    onTap: () => {Navigator.of(context).pop()},
                  ),
                  //ooooooooooooooooooooooooooooooooooooooooooooo
                  ListTile(
                    leading:
                        Icon(Icons.notifications_active, color: Colors.white),
                    contentPadding: EdgeInsets.fromLTRB(80, 60.0, 0.0, 0.0),
                    title: Text(
                      'Notificationss',
                      style: Theme.of(context).textTheme.headline5.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Notificatio(),
                          ))
                    },
                  ),
                  //oooooooooooooooooooooooooooooooooooooooooooooooooo
                  ListTile(
                    leading: Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                    contentPadding: EdgeInsets.fromLTRB(80, 60.0, 0.0, 0.0),
                    title: Text(
                      'Paramétres',
                      style: Theme.of(context).textTheme.headline5.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    onTap: () => {Navigator.of(context).pop()},
                  ),
                  Container(
                    padding: new EdgeInsets.only(top: 40.0),
                    alignment: FractionalOffset(0.9, 12),
                    child: Icon(
                      Icons.exit_to_app,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),

            // bottomNavigationBar: MyBottomNavBar(),
          ),
        ));
  }
}
/*
class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('Cart'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Feedback'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
*/

class Drawermenu extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, 0);

    path.quadraticBezierTo(0, 100, 0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

/*
class DrawerPainter extends CustomPainter {
  final Offset offset;

  DrawerPainter({this.offset});

  double getControlPointX(double width) {
    if (offset.dx == 0) {
      return width;
    } else {
      return offset.dx > width ? offset.dx : width + 75;
    }
  }

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    Path path = Path();
    path.moveTo(-size.width, 0);
    path.lineTo(size.width, 0);
    path.quadraticBezierTo(
        getControlPointX(size.width), offset.dy, size.width, size.height);
    path.lineTo(-size.width, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }*/
