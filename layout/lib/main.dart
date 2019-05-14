import 'package:flutter/material.dart';
import 'dart:math' show pi;

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
            rowBuilder(context, boxDecorationBorder),
            rowBuilder(context, boxDecorationBorderRadius),
            rowBuilder(context, boxDecorationBoxShadow),
          ],
        ),
      ),
    );
  }
}

// Definition
typedef WidgetBuilder = Widget Function(BuildContext);

// Constants
const EdgeInsetsDirectional marginTop = EdgeInsetsDirectional.only(top: 128);
const EdgeInsetsDirectional margin = EdgeInsetsDirectional.only(start: 24, top: 128, end: 24);

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

// BoxDecoration - Background Image
Widget boxDecorationBackgroundImage(BuildContext context) {
  return Container(
    margin: marginTop,
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

// BoxDecoration - Border
Widget boxDecorationBorder(BuildContext context) {
  return Container(
    margin: margin,
    constraints: BoxConstraints.expand(
      height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0,
    ),
    decoration: BoxDecoration(
      color: Colors.blue[600],
      border: Border.all(
        color: Colors.black,
        width: 8.0,
      ),
    ),
    alignment: Alignment.center,
    child: Text('Border',
      style: Theme.of(context)
          .textTheme
          .display1
          .copyWith(color: Colors.white)),
  );
}

// BoxDecoration - Border Radius
Widget boxDecorationBorderRadius(BuildContext context) {
  return Container(
    margin: margin,
    constraints: BoxConstraints.expand(
      height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0,
    ),
    decoration: BoxDecoration(
      color: Colors.blue[600],
      border: Border.all(
        color: Colors.grey,
        width: 8.0,
      ),
      borderRadius: BorderRadius.all(Radius.circular(24.0)),
    ),
    alignment: Alignment.center,
    child: Text('Border Radius',
      style: Theme.of(context)
          .textTheme
          .display1
          .copyWith(color: Colors.white)),
  );
}

// BoxDecoration - Box Shadow
Widget boxDecorationBoxShadow(BuildContext context) {
  return Container(
    margin: margin,
    constraints: BoxConstraints.expand(
      height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0,
    ),
    decoration: BoxDecoration(
      color: Colors.blue[600],
      border: Border.all(
        color: Colors.black,
        width: 1.0,
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.purple,
          offset: Offset.fromDirection(0.25 * pi, 10.0),
          blurRadius: 4.0,
          spreadRadius: 4.0,
        ),
        BoxShadow(
          color: Colors.red,
          offset: Offset.fromDirection(0.25 * pi, -4.0),
          blurRadius: 4.0,
          spreadRadius: 2.0,
        ),
      ],
    ),
    alignment: Alignment.center,
    child: Text('Border Box Shadow',
      style: Theme.of(context)
          .textTheme
          .display1
          .copyWith(color: Colors.white)),
  );
}
