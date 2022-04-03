import 'package:car_app/stats.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:car_app/main.dart';
import 'package:location/location.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';

class LoginPage extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      home: _LoginPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class _LoginPage extends StatefulWidget {
  _LoginPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _LP createState() => _LP();

}


class _LP extends State<_LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Car Connect"),
        backgroundColor: Colors.red[800],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 200,
                    child: Image.asset('images/logo.png',
                      height: 200,
                      width: 200,)
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter valid email id as carapp@gmail.com'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter your password'),
              ),
            ),
            TextButton(
              onPressed: (){
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('How to find Password'),
                    content: Text('It is your VIN number'),
                    actions: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red[800],
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Go Back'))
                    ],
                  ),
                );
              },
              child: Text(
                'Forgot Password',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ),
            TextButton(
              onPressed: (){
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Email and Password'),
                    content: Text('Email: Email you entered when buying your car\n'
                        'Password: your VIN number'),
                    actions: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red[800],
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Go Back'))
                    ],
                  ),
                );
              },
              child: Text(
                'New User?',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.red[800], borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context , MaterialPageRoute(builder: (context) => MyHomePage(title: 'title')));
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}