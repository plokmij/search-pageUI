import 'package:flutter/material.dart';

class LocationCard extends StatelessWidget {
  final String location;
  LocationCard({this.location});

  Widget build(BuildContext context) {
    return card(); 
  }

  Widget card(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      child: Stack(
        children: <Widget>[
          colorBox(Colors.blueAccent),
        ],
      ),
    );
  }

  Widget colorBox(Color color){
    return Container(
      height: 80.0,
      width: 120.0,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow(
            blurRadius: 2.0,
            offset: (Offset(0.0, 2.0)),
          ),
        ],
      ),
    );
  }
}