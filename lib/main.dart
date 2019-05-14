import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MiCard());

class MiCard extends StatelessWidget {
  const MiCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('assets/images/matiullah.jpg')),
              SizedBox(
                height: 20,
              ),
              Text(
                "Matiullah Karimi",
                style: TextStyle(
                  fontFamily: 'NotoSans',
                  fontSize: 42,
                  color: Colors.white,
                ),
              ),
              Text(
                "SOFTWARE DEVELOPER",
                style: TextStyle(
                  fontFamily: 'NotoSans',
                  color: Colors.blueGrey.shade100,
                  wordSpacing: 2.5,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                child: Divider(
                  color: Colors.blueGrey.shade100,
                ),
                height: 20,
                width: 200,
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.blueGrey,
                  ),
                  title: Text(
                    'matiullah.karimi@gmail.com',
                    style: TextStyle(
                      fontFamily: 'NotoSans',
                      color: Colors.blueGrey[700],
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 25,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.blueGrey,
                  ),
                  title: Text(
                    '0093 749 0744 68',
                    style: TextStyle(
                      color: Colors.blueGrey[700],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    buildSocialContainer(FontAwesomeIcons.facebookF),
                    buildSocialContainer(FontAwesomeIcons.twitter),
                    buildSocialContainer(FontAwesomeIcons.linkedinIn),
                    buildSocialContainer(FontAwesomeIcons.skype),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container buildSocialContainer(icon) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(5),
      child: Icon(
        icon,
        color: Colors.white,
      ),
      decoration: new BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blueGrey[800],
      ),
    );
  }
}
