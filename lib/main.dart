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
            buildBody(),
          ],
        ),
      ),
    );
  }

  Widget buildBody() {
    return Container(
      /*decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.red, width: 10.0)
        ),
      ),*/
      alignment: Alignment.topCenter,
      height: 498.0,
      child: ListView(
        padding: EdgeInsets.only(top: 15.0),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  'Centres in Location 1',
                  style: TextStyle(
                    fontSize: 21.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                alignment: Alignment.topLeft,
              ),
              buildSearchTile(),
              Container(
                padding: EdgeInsets.only(left: 10.0,top:10.0),
                child: Text(
                  'Centres in Location 2',
                  style: TextStyle(
                    fontSize: 21.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                alignment: Alignment.topLeft,
              ),
              buildSearchTile(),
              Container(
                padding: EdgeInsets.only(left: 10.0,top:10.0),
                child: Text(
                  'Centres in Location 2',
                  style: TextStyle(
                    fontSize: 21.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                alignment: Alignment.topLeft,
              ),
              buildSearchTile(),
              Container(
                padding: EdgeInsets.only(left: 10.0,top:10.0),
                child: Text(
                  'Centres in Location 3',
                  //textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 21.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                alignment: Alignment.topLeft,
              ),
              buildSearchTile(),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildList() {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black26,
              blurRadius: 3.0,
              offset: (Offset(0.0, 3.0)),
            ),
          ],
        ),
        height: 100.0,
        margin: EdgeInsets.only(top: 67.5),
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, right: 5.0),
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(
                  width: 10.0,
                ),
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
      alignment: Alignment.topCenter,
      height: 120.0,
      margin: EdgeInsets.only(left: 5.0),
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
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
              ItemSearchTile(color: Colors.grey),
              ItemSearchTile(color: Colors.grey),
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
