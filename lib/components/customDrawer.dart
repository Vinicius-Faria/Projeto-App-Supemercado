import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final IconData icon;
  final String text;

  CustomDrawer(this.icon, this.text);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        child: Container(
          height: 60.0,
          child: Row(
            children: <Widget>[
              Icon(
                icon,
                size: 35.0,
                color: Colors.black,
              ),
              SizedBox(
                width: 30.0),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                )
            ],
          ),
        ),
      )
    );
  }
}
