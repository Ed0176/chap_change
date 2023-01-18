import 'package:easychange/screens/input_phone.dart';
import 'package:easychange/screens/login.dart';
import 'package:easychange/styles/text.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
                "REGISTER",
                style: TextStyles.title,
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
                labelStyle: TextStyles.suggestion,
              ),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Padding(
            padding: EdgeInsets.all(0.0),
            child: TextField(
              style: TextStyle(color: Colors.white),
              obscureText: true,
              decoration: InputDecoration(
                fillColor: Colors.grey[900],
                filled: true,
                prefixIcon: Icon(
                  Icons.password,
                  color: Colors.grey,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber, width: 2.0),
                ),
                border: OutlineInputBorder(),
                labelText: 'Password',
                labelStyle: TextStyles.suggestion,
              ),
            ),
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
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => InputPhone()));
              },
              child: Text('REGISTER', style: TextStyles.buttonTextLight),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 90.0, vertical: 20.0),
            child: Row(children: [
              Text("Already Registered?",
                  style: TextStyle(color: Colors.white)),
              TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(8.0),
                  primary: Colors.white,
                  textStyle: const TextStyle(fontSize: 12, color: Colors.amber),
                ),
                onPressed: () {
                  // Navigator.of(context).pushNamed('/login');
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Login()));
                },
                child: const Text(
                  'LOGIN',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ),
            ]),
          ),
        ],
      ),
    ));
  }
}
