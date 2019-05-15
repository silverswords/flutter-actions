import 'package:flutter/material.dart';

void main() => runApp(Application());

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Float Button'),
        ),
        bottomNavigationBar: BottomNavigation(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.shopping_cart),
          onPressed: () {},
        ),
        body: Center(
          child: Text('Scaffold bottomNavigationBar'),
        ),
      ),
    );
  }
}

class BottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: new Container(
        height: 60.0,
        color: Colors.white,
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            new Container(
              width: MediaQuery.of(context).size.width / 5,
              child: new Icon(Icons.battery_std, size: 35.0),
            ),
            new Container(
              width: MediaQuery.of(context).size.width / 5,
              child: new Icon(Icons.airplay, size: 35.0),
            ),
            new Container(width: MediaQuery.of(context).size.width / 5),
            new Container(
              width: MediaQuery.of(context).size.width / 5,
              child: new Icon(Icons.wifi, size: 35.0),
            ),
            new Container(
              width: MediaQuery.of(context).size.width / 5,
              child: new Icon(Icons.memory, size: 35.0),
            )
          ],
        ),
      ),
    );
  }
}
