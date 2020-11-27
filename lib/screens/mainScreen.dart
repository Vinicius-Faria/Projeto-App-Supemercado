import 'package:flutter/material.dart';
import 'package:store/screens/produtosScreen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
         body: ProdutosScreen(),
        )
      ],
    );
  }
}
