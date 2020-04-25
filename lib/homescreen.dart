import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'QUIZ APP',
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Stack(
        children: <Widget>[
          new Container(
            decoration: BoxDecoration(
              image: new DecorationImage(
                  image: new AssetImage("assets/images/bg.jpg"),
                  fit: BoxFit.fill),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    height: 30.0,
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: RaisedButton(
                      child: Text(
                        'Start Game',
                        style: TextStyle(
                          fontSize: 35.0,
                        ),
                      ),
                      color: Colors.green,
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: RaisedButton(
                      child: Text(
                        'Levels',
                        style: TextStyle(
                          fontSize: 35.0,
                        ),
                      ),
                      color: Colors.redAccent,
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: RaisedButton(
                      child: Text(
                        'Share',
                        style: TextStyle(
                          fontSize: 35.0,
                        ),
                      ),
                      color: Colors.blue,
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: RaisedButton(
                      child: Text(
                        'About Us',
                        style: TextStyle(
                          fontSize: 35.0,
                        ),
                      ),
                      color: Colors.blueGrey.shade500,
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: RaisedButton(
                      child: Text(
                        'Exit',
                        style: TextStyle(
                          fontSize: 35.0,
                        ),
                      ),
                      color: Colors.yellow,
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      onPressed: () {
                        SystemNavigator.pop();
                      },
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
