import 'package:flutter/material.dart';
import "package:flare_flutter/flare_actor.dart";

class FlareApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Flare Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FlareHomePage(title: 'Flare Naive Sample'),
    );
  }
}

class FlareHomePage extends StatefulWidget {
  FlareHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _FlareHomePageState createState() => _FlareHomePageState();
}

class _FlareHomePageState extends State<FlareHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: new FlareActor(
                "animations/Filip.flr",
                alignment: Alignment.center,
                fit: BoxFit.contain,
                animation: 'idle',
              )
            )
          ],
        ),
      )
    );
  }
}
