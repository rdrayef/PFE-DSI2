import 'package:exp/ajouter.dart';
import 'package:exp/inscription.dart';
import 'package:exp/profile.dart';
import 'package:exp/widgets/boutton.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ajouterpage(),
        routes: {
          'logine': (context) => inscription(),
        },
      ),
    );

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [Colors.indigo[900], Colors.indigo[900]]),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 60,
              ),
              child: Image.asset(
                'assets/images/Groupe 66.png',
                height: 300,
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60)),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 30,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.indigo[900]))),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      labelText: "Email",
                                      hintText:
                                          "ex:ibtissam.eljounahi@gmail.com",
                                      hintStyle: TextStyle(color: Colors.black),
                                      labelStyle: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.indigo[900]))),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      labelText: "Mot de passe",
                                      hintStyle: TextStyle(color: Colors.black),
                                      labelStyle: TextStyle(color: Colors.grey),
                                    ),
                                    obscureText: true,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 50),
                                  child: Container(
                                    child: orgbutton(
                                      text: "Login",
                                      textColors: Colors.white,
                                      bgcolor: Colors.indigo[900],
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 2, vertical: 8),
                                  child: FlatButton(
                                    onPressed: (null),
                                    child: Text(
                                      "Mot de passe oublié?",
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 17,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 2),
                                  child: FlatButton(
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pushNamed('logine');
                                      },
                                      child: Text(
                                        "Créer un nouveau compte",
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 19,
                                        ),
                                      )),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
