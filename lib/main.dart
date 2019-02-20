import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        child: Center(
          child: Text('Hello fucken world'),
        ),
        navigationBar: CupertinoNavigationBar(
          leading: Icon(Icons.arrow_back,
          color: Colors.black,),
          middle: CupertinoTextField(
            placeholder: 'Search',
            decoration: BoxDecoration(
              color: Colors.white10,
              border: Border.all(
                width: 1.0,
                color: Colors.grey,
              )
            ),
          ),
          trailing: Icon(Icons.remove_red_eye,
          color: Colors.black,),
        ),
      ),
    );
  }
}
