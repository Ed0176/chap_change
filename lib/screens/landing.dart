import 'package:easychange/widget/listtile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../styles/colors.dart';

class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Flexible(
              child: Stack(
                children: <Widget>[
                  Positioned(
                    child: Image.asset(
                      'assets/images/money.jpg',
                      height: 241.0,
                    ),
                    top: -10.0,
                  ),
                  Positioned(
                    bottom: 10.0,
                    right: 10.0,
                    child: GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          //borderRadius: BorderRadius.circular(BaseStyles.borderRadius)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Requestor Page', /*style: TextStyles.buttonTextLight*/
                          ),
                        ),
                      ),
                      onTap: () => Navigator.of(context).pushNamed('/vendor'),
                    ),
                  ),
                ],
              ),
              flex: 2,
            ),
            Flexible(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CardTile(),
                    CardTile(),
                    CardTile(),
                    CardTile(),
                    CardTile(),
                    CardTile(),
                    CardTile(),
                    CardTile(),
                    CardTile(),
                    CardTile(),
                  ],
                ),
              ),
              flex: 3,
            ),
          ]),
    ));
  }
}
