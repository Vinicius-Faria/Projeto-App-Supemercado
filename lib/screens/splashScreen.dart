import 'dart:async';
import 'package:flutter/material.dart';
import 'package:store/screens/homeScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async{
    var duration = Duration(seconds: 3);
    return Timer(duration, route);
      }
    
      
      route() {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
      }
    
      @override
      Widget build(BuildContext context) {
        
     return Scaffold(
          body: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(color: Colors.white),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 100.0,
                            child: Icon(
                              Icons.shopping_cart,
                              color: Colors.deepOrange,
                              size: 150.0,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.0),
                          ),
                          Text("Mineirinho",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 50.0,
                            fontWeight: FontWeight.w700
                          ),)
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircularProgressIndicator(),
                        Padding(
                          padding: EdgeInsets.only(top: 20.0),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        );
      }
}