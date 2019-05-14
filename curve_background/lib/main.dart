import 'package:flutter/material.dart';

void main() => runApp(Application());

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Curve Background'),
        ),
        body: Body(),
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;

    return Container(
      width: media.width,
      height: media.height,
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: Curve(),
            child: Container(
              width: media.width,
              height: media.height * 0.2,
              decoration: BoxDecoration(
                //color: Color(0xffff1e39),
                gradient: LinearGradient(
                  colors: [
                    Color(0xffbdc3c7),
                    Color(0xff2c3e50),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Curve extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width / 4, size.height / 4, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
