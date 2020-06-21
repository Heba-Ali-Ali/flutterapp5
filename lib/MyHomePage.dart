import 'package:flutter/material.dart';

import 'SeconedRoute.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildContent(context),
    );
  }
}

Widget _buildContent(BuildContext context) {
  return Stack(
    children: <Widget>[
      Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/coffe.jpg'),
              fit: BoxFit.cover,
            )),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 230,
          ),
          Text(
            'COFFE_SHOP',
            style: TextStyle(
              fontSize: 50.0,
              color: Colors.brown,
              fontFamily: 'orangejuice',
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      Positioned(
        bottom: 30,
        left: 90,
        right: 90,
        child: SizedBox(
          width: 50,
          height: 40,
          child: RaisedButton(
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=>GetStareted()),);
            },
            color: Colors.brown,
            child: Text(
              'Get Started',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                fontFamily: 'heba',
                color: Colors.white,
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
      ),
    ],
  );
}
