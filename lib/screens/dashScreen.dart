import 'package:flutter/material.dart';
import 'package:store/components/customDrawer.dart';

class DashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _CustomDrawer() => Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color(0xFFE64A19).withOpacity(0.9),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
        );
    return Drawer(
      child: Stack(
        children: <Widget>[
          _CustomDrawer(),
          ListView(
            padding: EdgeInsets.only(left: 15.0, top: 25.00),
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(bottom: 7.0),
                  padding: EdgeInsets.fromLTRB(0.0, 16.0, 16.0, 8.0),
                  height: 170.0,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 8.0,
                        left: 0.0,
                        child: Text(
                          "Mercadinho \n Mineirinho",
                          style: TextStyle(
                              fontSize: 36.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Positioned(
                        left:0.0,
                        bottom: 0.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Olá, Vinicius .",
                            style: TextStyle(
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold
                            ),)
                          ],
                        )
                      )
                    ],
                  )),
                  SizedBox(height: 50.0,),
                  CustomDrawer(Icons.home, "Inicio"),
                  CustomDrawer(Icons.monetization_on, "Promoção"),
                  CustomDrawer(Icons.format_list_bulleted, "Produtos"),
                  CustomDrawer(Icons.playlist_add_check, "Meus Pedidos"),
                  CustomDrawer(Icons.location_on, "Loja"),
            ],
          )
        ],
      ),
    );
  }
}
