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
                        width: 350,
                        color: textAreaPurpal,
                        child: RichText(
                          text: TextSpan(
                              text: "Welcome to the ",
                              style: TextStyle(
                                  color: textBlack,
                                  fontFamily: 'Apple',
                                  fontSize: 20.0,
                                  decoration: TextDecoration.none)),
                        ),
                      ),
                      Container(
                        color: Colors.blue,
                        child: RichText(
                          text: TextSpan(
                              text: "Bus",
                              style: TextStyle(
                                  color: textBlack,
                                  fontFamily: 'Apple',
                                  fontSize: 20.0,
                                  decoration: TextDecoration.none)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: Text('Product List'),
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
