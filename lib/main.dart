import 'package:flutter/material.dart';
import 'package:store/screens/splashScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

 
 @override
Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Mercadinho Mineirinho',
    theme: ThemeData(
      primarySwatch: Colors.deepOrange,
    ),
    home: SplashScreen(),
  );

}
}