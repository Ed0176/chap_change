import 'package:easychange/screens/input_phone.dart';
import 'package:easychange/screens/login.dart';
import 'package:flutter/material.dart';

class OTP extends StatefulWidget {
  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            child: CircleAvatar(
              backgroundColor: Colors.black,
              backgroundImage: AssetImage('assets/images/logo.png'),
              radius: 100,
            ),
            backgroundColor: Colors.black,
            radius: 120,
          ),
          SizedBox(
            height: 5.0,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "Enter the code sent",
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: EdgeInsets.all(0.0),
            child: TextField(
              obscureText: false,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                fillColor: Colors.grey[900],
                filled: true,
                hintStyle: TextStyle(color: Colors.white),
                prefixIcon: Icon(Icons.phone, color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2.0),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber, width: 2.0)),
                border: OutlineInputBorder(),
                labelText: 'OTP',
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          SizedBox(
            height: 20,
          ),
          ButtonTheme(
            minWidth: 350.0,
            height: 50.0,
            child: RaisedButton(
              color: Colors.grey,
              textColor: Colors.white,
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(3.0),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Login()));
              },
              child: Text('SUBMIT'),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 90.0, vertical: 10.0),
            child: Row(children: [
              TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(8.0),
                  primary: Colors.white,
                  textStyle: const TextStyle(fontSize: 12, color: Colors.amber),
                ),
                onPressed: () {
                  // Navigator.of(context).pushNamed('/login');
                },
                child: const Text(
                  'Resend Code',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ),
            ]),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 90.0, vertical: 0.0),
            child: Row(children: [
              TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(8.0),
                  primary: Colors.white,
                  textStyle: const TextStyle(fontSize: 12, color: Colors.amber),
                ),
                onPressed: () {
                  // Navigator.of(context).pushNamed('/login');
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => InputPhone()));
                },
                child: Align(
                  alignment: Alignment.center,
                  child: const Text(
                    'Re-Enter Phone number',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    ));
  }
}
