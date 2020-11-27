import 'package:flutter/material.dart';
import 'package:store/animations/fadeAnimatons.dart';
import 'package:store/components/customButton.dart';
import 'package:store/components/customButtonAnimation.dart';
import 'package:store/screens/produtosScreen.dart';
import 'package:store/screens/loginScreen.dart';
import 'package:store/screens/tela_version.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Color(0xFFE64A19).withOpacity(0.9),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            margin: EdgeInsets.only(top: 95, bottom: 120),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                     Row(
                      children: <Widget>[
                       SizedBox(width: 380,),
                       FadeAnimation(1.4, IconButton(icon: Icon(Icons.more_vert), onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => TelaVersion()));
                       },
                       color: Colors.white,
                       iconSize: 35,
                       ))
                      ],
                    ),

                    FadeAnimation(1.4, Text("O melhor para você !", style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                letterSpacing: 2
                                ))),
                                SizedBox(height: 20),
                    FadeAnimation(
                        1.6,
                        Text("Mineirinho",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 50,
                                fontWeight: FontWeight.bold))),


                  ],
                  
                ),
                Column(
                  children: <Widget>[
                    FadeAnimation(
                        2.4,
                        CustomButton(
                          label: "Entrar",
                          background: Colors.transparent,
                          fontColor: Colors.white,
                          borderColor: Colors.white,
                          child: ProdutosScreen(),
                        )),
                    SizedBox(height: 20),
                    FadeAnimation(
                        2.6,
                        CustomButtonAnimation(
                          label: "Cadastrar",
                          background: Colors.white,
                          borderColor: Colors.white,
                          fontColor: Colors.black,
                          child: LoginScreen(),
                        )),
                    SizedBox(height: 30),
                    //Parte de esquecer a senha....
                    // FadeAnimation(3.4 ,Text("Esqueci a Senha", style: TextStyle(
                    // color: Colors.black,
                    // fontSize: 17,
                    // decoration: TextDecoration.underline
                    // )))
                    //------------------------------
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
