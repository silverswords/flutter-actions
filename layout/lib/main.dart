import 'package:flutter/material.dart';

void main() => runApp(Application());

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout',
      home: Scaffold(
        body: ListView(
          children: [
            rowBuilder(context, transformContainer),
            rowBuilder(context, boxDecorationBackgroundImage),
          ],
        ),
      ),
    );
  }
}

typedef WidgetBuilder = Widget Function(BuildContext);

// row
Widget rowBuilder(BuildContext context, WidgetBuilder builder) {
  return Container(
    child: Row(
      children: <Widget>[
        Expanded(
          child: Column(
            children: <Widget>[
              builder(context),
            ],
          ),
        )
      ],
    ),
  );
}

// Container Transform Sample
Widget transformContainer(BuildContext context) {
  return Container(
    constraints: BoxConstraints.expand(
      height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0,
    ),
    padding: const EdgeInsets.all(8.0),
    color: Colors.blue[600],
    alignment: Alignment.center,
    child: Text('Transform',
      style: Theme.of(context)
          .textTheme
          .display1
          .copyWith(color: Colors.white)),
    transform: Matrix4.rotationZ(0.2),
  );
}

// BoxDecoration
Widget boxDecorationBackgroundImage(BuildContext context) {
  return Container(
    margin: const EdgeInsetsDirectional.only(top: 128),
    constraints: BoxConstraints.expand(
      height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0,
    ),
    decoration: BoxDecoration(
      image: DecorationImage(
        image: new AssetImage('images/pumpkin.png'),
        fit: BoxFit.cover,
      )
    ),
    alignment: Alignment.center,
    child: Text('Decoration',
      style: Theme.of(context)
          .textTheme
          .display1
          .copyWith(color: Colors.white)),
  );
}
