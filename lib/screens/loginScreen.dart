import 'package:flutter/material.dart';
import 'package:store/animations/fadeAnimatons.dart';
import 'package:store/components/buttonLoginAnimation.dart';
import 'package:store/components/customtextfield.dart';
import 'package:store/screens/produtosScreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}
int a =0;
int b =1;

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
              child: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/login.jpg"),
           fit: BoxFit.contain,
            alignment: Alignment.topCenter
        )
            ),
      child: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            SizedBox(height: 25),
            Expanded(
                child: Container(padding: EdgeInsets.symmetric(horizontal: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.white, size: 30,),
                    onPressed: (){
                      Navigator.pop(context);
                    },)
                  ],
                ),
              )
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 50),
              height: MediaQuery.of(context).size.height  * 0.75,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30)
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  
                 FadeAnimation(0.8, Text("Bem Vindo !", style: TextStyle(
                                color: Colors.black,
                                fontSize: 40,
                                fontWeight: FontWeight.bold
                                ))),

                   FadeAnimation(1.0, Text("Preencha os campos abaixo.", style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                                ))),
                                
                  //Icone para baixo
                  //IconButton(icon: Icon(Icons.keyboard_arrow_down, color: Colors.black, size: 40,),
                  //onPressed: (){},),
                  //----------------
                  SizedBox(height: 50),
                  CustomTextfield(
                    label: "Nome",
                    icon: Icon(Icons.person_outline,size: 25, color: Colors.black),
                  ),
                  SizedBox(height: 10),
                  CustomTextfield(
                    label: "E-mail",
                    icon: Icon(Icons.alternate_email,size: 25, color: Colors.black),
                  ),
                  SizedBox(height: 10),
                  CustomTextfield(
                    label: "Senha",
                    ispassword: true,
                    icon: Icon(Icons.lock_outline,size: 25, color: Colors.black),

                  ),
                  SizedBox(height: 10),
                  CustomTextfield(
                    label: "Endereço",  
                    icon: Icon(Icons.location_on,size: 25, color: Colors.black), 
                  ),
                  SizedBox(height: 10),
                  CustomTextfield(
                    label: "Numero",
                    icon: Icon(Icons.home,size: 25, color: Colors.black),
                  ),
                  SizedBox(height: 30),
                  ButtonLoginAnimation(
                    label: "Acessar",
                    fontColor: Colors.white,
                    background: Colors.black,
                    child: ProdutosScreen(),
                  )
                ],
              ),
            )
          ],
      )),
    )),
        ));
  }
}
