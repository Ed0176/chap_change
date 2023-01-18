import 'package:easychange/screens/login.dart';
import 'package:easychange/screens/otp.dart';
import 'package:flutter/material.dart';

class InputPhone extends StatefulWidget {
  @override
  State<InputPhone> createState() => _InputPhoneState();
}

class _InputPhoneState extends State<InputPhone> {
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
                "Enter your Phone number",
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
                labelText: 'Phonenumber',
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
                    .push(MaterialPageRoute(builder: (context) => OTP()));
              },
              child: Text('SUBMIT'),
            ),
          ),
        ],
      ),
    ));
  }
}
