import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widgets/location_card.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          middle: CupertinoTextField(
            placeholder: 'Search',
            decoration: BoxDecoration(
                color: Colors.white10,
                border: Border.all(
                  width: 1.0,
                  color: Colors.grey,
                )),
          ),
          trailing: Icon(
            Icons.remove_red_eye,
            color: Colors.black,
          ),
        ),
        child: Column(
          children: <Widget>[
            buildList(),
            SizedBox(
              height: 5.0,
            ),
            Text(
                'I m going kdfkl dfjkh sdkfjhskjdf hksjjdfh ksdhfklsdjhf ksdjjhf alksjdfhlkjsadhf klsjdjhfksdjhf klsadjjfh ksdjfhksdjfhksajdhfks dfklsadfhlksajdhf lksjdhf lksdjhf lksdjhfkzxcmzxbnclkash d lkasjdhfks zfkjasdhf kljsghdfk;asjhd fkljsd kfjhs adlfkjas dfkjh sakdjfh skdfhskdf klsajdfh skjdfhksdhfks vmzxcbnsdhgf kjasdf kasdhf crazy'),
          ],
        ),
      ),
    );
  }

  Widget buildList() {
    return Container(
        height: 100.0,
        margin: EdgeInsets.only(top: 75.0),
        padding: EdgeInsets.all(5.0),
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Row(
              children: <Widget>[
                LocationCard(),
                LocationCard(),
                LocationCard(),
                LocationCard()
              ],
            )
          ],
        ));
  }
}
