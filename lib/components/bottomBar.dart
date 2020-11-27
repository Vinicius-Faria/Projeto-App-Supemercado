import 'package:flutter/material.dart';
import 'package:store/screens/produtosScreen.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomBar extends StatelessWidget {  

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 9.0,
        color: Colors.transparent,
        elevation: 12.0,
        clipBehavior: Clip.antiAlias,
        child: Container(
            height: 50.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0)),
                color: Colors.white),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 50.0,
                      width: MediaQuery.of(context).size.width / 2 - 40.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.home),
                            color: Colors.black,
                            iconSize: 35.0,
                            onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ProdutosScreen()));  
                            },
                          ),
                           IconButton(
                            icon: Icon(Icons.watch_later),
                            color: Colors.black,
                            iconSize: 35.0,
                            onPressed: () {
                              
                            },
                          ),
                          ],
                      )),
                  Container(
                      height: 50.0,
                      width: MediaQuery.of(context).size.width / 2-40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                        IconButton(
                            icon: Icon(Icons.call),
                            color: Colors.black,
                            iconSize: 35.0,
                            onPressed: (){
                             launch('tel:35 3651-1792');
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.pageview),
                            color: Colors.black,
                            iconSize: 35.0,
                            onPressed: () {
                              launch('https:<https://www.facebook.com/mercadinho.mineirinho>');
                            },
                          ),
                        ],
                      )),
                ])));
  }
}
