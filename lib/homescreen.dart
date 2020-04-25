import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'QUIZ APP',
            style:
                TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
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
                      child: new Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: new Image.asset('assets/images/ui.png',
                                height: 30.0, width: 40.0),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5.0),
                            child: new Text(
                              'Start Game',
                              style: TextStyle(
                                fontSize: 35.0,
                              ),
                            ),
                          )
                        ],
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
                      child: new Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        // crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: new Image.asset('assets/images/stair.png',
                                height: 40.0, width: 40.0),
                          ),
                          Padding(
                            padding: EdgeInsets.all(2.0),
                            child: new Text(
                              'Levels',
                              style: TextStyle(
                                fontSize: 35.0,
                              ),
                            ),
                          )
                        ],
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
                      child: new Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: new Image.asset('assets/images/share.png',
                                height: 31.0, width: 40.0),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: new Text(
                              'Share',
                              style: TextStyle(
                                fontSize: 35.0,
                              ),
                            ),
                          )
                        ],
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
                      child: new Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Image.asset('assets/images/about.png',
                              height: 30.0, width: 40.0),
                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: new Text(
                              'About Us',
                              style: TextStyle(
                                fontSize: 35.0,
                              ),
                            ),
                          )
                        ],
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
                      child: new Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Image.asset('assets/images/logout.png',
                              height: 30.0, width: 40.0),
                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: new Text(
                              'Exit',
                              style: TextStyle(
                                fontSize: 35.0,
                              ),
                            ),
                          )
                        ],
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
