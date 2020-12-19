import 'package:flutter/material.dart';
import 'package:Intercity_Express/style/colors.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 50.0,
                        width: 330,
                        color: textAreaPurpal,
                        child: Center(
                          child: RichText(
                            text: TextSpan(
                              text: "INTERCITY ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: textWhite,
                                  fontStyle: FontStyle.italic,
                                  //fontFamily: 'Apple',
                                  fontSize: 20.0,
                                  decoration: TextDecoration.none),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Express',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: textYellow,
                                        fontStyle: FontStyle.italic,
                                        fontFamily: 'Apple',
                                        fontSize: 20.0,
                                        decoration: TextDecoration.none)),
                                // TextSpan(
                                //     text: ' world!',
                                //     style: TextStyle(
                                //         fontWeight: FontWeight.bold,
                                //         color: textWhite,
                                //         fontFamily: 'Apple',
                                //         fontSize: 20.0,
                                //         decoration: TextDecoration.none)),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Container(
                        height: 50.0,
                        width: 50,
                        color: Colors.blue,
                        child: Center(
                          child: RichText(
                            text: TextSpan(
                                text: "Bus",
                                style: TextStyle(
                                    color: textWhite,
                                    fontFamily: 'Apple',
                                    fontSize: 20.0,
                                    decoration: TextDecoration.none)),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                  //color: buttonPurpal,
                  child: Center(
                      child: FlatButton(
                          color: Colors.blue,
                          textColor: Colors.white,
                          disabledColor: buttonPurpal,
                          disabledTextColor: Colors.black,
                          padding: EdgeInsets.all(8.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              side: BorderSide(color: Colors.red)),
                          splashColor: Colors.blueAccent,
                          onPressed: null,
                          child: Text('Find Bus',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: textBlack,
                                  // fontFamily: 'Apple',
                                  // fontSize: 20.0,
                                  // decoration: TextDecoration.none))))),
              Expanded(
                  child: ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: Text('Product List new'),
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.pushNamed(context, '/productList');
                    },
                  ),
                  FlatButton(
                    child: Text('Profile'),
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.pushNamed(context, '/profile');
                    },
                  ),
                ],
              )
                  // RichText(
                  //   text: TextSpan(
                  //       text: "Button",
                  //       style: TextStyle(
                  //           color: buttonBlack,
                  //           fontFamily: 'Apple',
                  //           fontSize: 20.0,
                  //           decoration: TextDecoration.none)),
                  // ),
                  ),
              Expanded(
                flex: 7,
                child: Image.asset('assets/images/index.jpg'),
              )
            ],
          )
        ],
      ),
    );
  }
}
