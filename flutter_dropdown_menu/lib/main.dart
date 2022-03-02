import 'package:flutter/material.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dropdown Menu',
      home: Dropdown(),
    );
  }
}

class Dropdown extends StatefulWidget {
  const Dropdown({Key? key}) : super(key: key);

  @override
  _DropdownState createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  final List<String> subjects = [
    "Computer Science",
    "Bio",
    "History",
    "Science",
    "Math"
  ];
  String selectedSubject = "Computer Science";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton<String>(
              items: subjects.map<DropdownMenuItem<String>>((value) {
                return DropdownMenuItem(child: Text(value), value: value);
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedSubject = value!;
                });
              },
            ),
            SizedBox(height: 50.0),
            Text(
              "$selectedSubject",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
            )
          ],
        ),
      ),
    );
  }
}
