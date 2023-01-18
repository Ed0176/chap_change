import 'package:easychange/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardTile extends StatefulWidget {
  const CardTile({Key? key}) : super(key: key);
  _CardTileState createState() => _CardTileState();
}

class _CardTileState extends State<CardTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 25.0,
            backgroundColor: AppColors.lightblue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                    '26' /*month, style: TextStyle(color:Colors.white, fontSize: 12.0),*/),
                Text('Jan' /*date, style: TextStyles.buttonTextLight*/),
              ],
            ),
          ),
          title: Text('10,000' /*title,style: TextStyles.subtitle*/),
          subtitle: Text('Jane Doe' /*location*/),
          trailing: Icon(FontAwesomeIcons.moneyBill, color: AppColors.darkblue),
          onTap: () {},
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Divider(color: AppColors.lightgray),
        ),
      ],
    ));
  }
}
