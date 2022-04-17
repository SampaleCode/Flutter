import 'package:flutter/material.dart';
import 'package:radial_button/widget/circle_floating_button.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Radial Button Sample',
      home: RadialButton(),
    );
  }
}

class RadialButton extends StatefulWidget {
  const RadialButton({Key? key}) : super(key: key);

  @override
  State<RadialButton> createState() => _RadialButtonState();
}

class _RadialButtonState extends State<RadialButton> {
  var itemsActionButton = [
    FloatingActionButton(
      onPressed: () {
        print("Add");
      },
      child: Icon(Icons.add),
      backgroundColor: Colors.greenAccent,
    ),
    FloatingActionButton(
      onPressed: () {
        print("Share");
      },
      child: Icon(Icons.share),
      backgroundColor: Colors.orangeAccent,
    ),
    FloatingActionButton(
      onPressed: () {
        print("Camera");
      },
      child: Icon(Icons.camera),
      backgroundColor: Colors.blueAccent,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Radial Button Sample"),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: Icon(Icons.add),
      // ),
      body: Column(
        children: [
          Container(
            width: 250,
            height: 250,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: CircleFloatingButton.semiCircle(
                items: itemsActionButton,
                icon: Icons.home,
                color: Colors.green,
                curveAnim: Curves.ease,
                duration: Duration(milliseconds: 100),
              ),
            ),
          ),
          Container(
            width: 250,
            height: 220,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: CircleFloatingButton.completeCircle(
                items: itemsActionButton,
                icon: Icons.menu,
                color: Colors.blue,
                curveAnim: Curves.ease,
                duration: Duration(milliseconds: 100),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 200,
            child: Align(
              alignment: Alignment.bottomRight,
              child: CircleFloatingButton.floatingActionButton(
                items: itemsActionButton,
                icon: Icons.settings,
                color: Colors.orange,
                curveAnim: Curves.ease,
                duration: Duration(milliseconds: 100),
              ),
            ),
          )
        ],
      ),
    );
  }
}
