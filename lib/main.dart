import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widgets/location_card.dart';
import 'widgets/item_search_tile.dart';

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
              height: 10.0,
            ),
            Text('Centres in Location 1',
            style: TextStyle(
              fontSize: 21.0,
              fontWeight: FontWeight.w700,
            ),),
            buildSearchTile(),
            Text('Centres in Location 2',
            style: TextStyle(
              fontSize: 21.0,
              fontWeight: FontWeight.w700,
            ),),
            buildSearchTile(),
            Text('Centres in Location 3',
            style: TextStyle(
              fontSize: 21.0,
              fontWeight: FontWeight.w700,
            ),),
            buildSearchTile(),
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
                LocationCard(
                  location: "Wandoor",
                  color: Colors.grey,
                ),
                LocationCard(
                  location: "NowaY",
                  color: Colors.grey,
                ),
                LocationCard(
                  color: Colors.grey,
                ),
                LocationCard(
                  color: Colors.grey,
                )
              ],
            )
          ],
        ));
  }

  Widget buildSearchTile() {
    return Container(
      height: 120.0,
      padding: EdgeInsets.all(7.0),
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Row(
            children: <Widget>[
              ItemSearchTile(color: Colors.grey),
              ItemSearchTile(color: Colors.grey),
              ItemSearchTile(color: Colors.grey),
              ItemSearchTile(color: Colors.grey),
              ItemSearchTile(color: Colors.grey),
              ItemSearchTile(color: Colors.grey),              ItemSearchTile(color: Colors.grey),
              ItemSearchTile(color: Colors.grey),
              ItemSearchTile(color: Colors.grey),
              ItemSearchTile(color: Colors.grey),
              ItemSearchTile(color: Colors.grey),
              ItemSearchTile(color: Colors.grey),
            ],
          ),
        ],
      ),
    );
  }
}
