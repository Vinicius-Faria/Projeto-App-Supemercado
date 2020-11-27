import 'package:flutter/material.dart';


class CustomTextfield extends StatelessWidget {
  final String label;
  final Widget icon;
  final bool ispassword;

  
  const CustomTextfield(
      {Key key, this.icon, this.ispassword = false , this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
       obscureText: ispassword,
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.deepOrangeAccent, width: 1.5),
              borderRadius: BorderRadius.circular(50)
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 1.5),
              borderRadius: BorderRadius.circular(50)
            ),
            labelText: label,
            labelStyle:
                TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            suffixIcon: icon,
            ),
        );
  }
}
