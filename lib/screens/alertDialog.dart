import 'package:flutter/material.dart';

Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () { },
  );

AlertDialog alerta = AlertDialog(
    title: Text("Promoção Imperdivel"),
    content: Text("Não perca a promoção."),
    actions: [
      okButton,
    ],
  );