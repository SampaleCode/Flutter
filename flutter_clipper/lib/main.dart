import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Clipper',
      home: ClipperApp(),
    );
  }
}

class ClipperApp extends StatefulWidget {
  @override
  _ClipperAppState createState() => _ClipperAppState();
}

class _ClipperAppState extends State<ClipperApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Clipper'),
      ),
      body: Container(
        child: ClipPath(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.purple,
                  gradient: LinearGradient(
                    colors: [Colors.blueAccent, Colors.lightBlue],
                    begin: Alignment.centerRight,
                    end: Alignment(-1.0, -1.0),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 80.0,
                      child: Image.asset(
                        "assets/images/user.png",
                        width: 100.0,
                        height: 100.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    "Sample Code",
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                  Text(
                    "Flutter Clipper",
                    style: TextStyle(color: Colors.grey, fontSize: 20.0),
                  ),
                ],
              ),
            ],
          ),
          clipper: HeaderColour(),
        ),
      ),
    );
  }
}

class HeaderColour extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 150);
    path.lineTo(size.width, size.height - 250);
    path.lineTo(size.width, size.height - 550);
    path.lineTo(0.0, size.height - 450);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
