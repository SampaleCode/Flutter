import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginForm(),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController uname = TextEditingController();
  TextEditingController upaswd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Login Image
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                  width: 200,
                  height: 150,
                  child: Image.asset(
                    'assets/images/login.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            //Edit Text
            SizedBox(height: 20.0),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: TextField(
                controller: uname,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                    hintText: 'Please Enter User Name'),
              ),
            ),

            SizedBox(height: 10.0),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: TextField(
                controller: upaswd,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Please Enter Password'),
              ),
            ),

            SizedBox(height: 20.0),

            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20.0)),
              child: FlatButton(
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                onPressed: () {
                  String _name = uname.text.toString().trim();
                  String _paswd = upaswd.text.toString();

                  if (_name.isEmpty) {
                    print('Please Enter User Name');

                  } else if (_paswd.isEmpty) {
                    print('Please Enter Password');

                  } else {
                    if (_name == 'admin' && _paswd == 'admin') {
                      print('Login Success');
                    } else {
                      print('Login Fail');
                    }
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
