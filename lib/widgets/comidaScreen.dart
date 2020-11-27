import 'package:flutter/material.dart';

class ComidaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       //backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          SizedBox(height: 5.0),
          Container(
            padding: EdgeInsets.only(right: 0.0),
            width: MediaQuery.of(context).size.width - 30.0,
            height: MediaQuery.of(context).size.height - 50.0,
            child: GridView.count(
            crossAxisCount: 2,
            primary: false,
            crossAxisSpacing: 15.0,
            mainAxisSpacing: 1.0,
            childAspectRatio: 0.8,
            children:<Widget>[
              _buildCard('Coca - Cola', '\$4,99', "assets/images/coca.jpg", false, false, context),
               _buildCard('Coca - Cola', '\$4,99', "assets/images/coca.jpg", false, false, context),
               
            ],)
          )
        ],
      ),
      
    );
  }
}

Widget _buildCard(String nome, String preco, String img, bool add,
      bool favorite, context)
      {
    return Padding(
      padding: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 5.0, right: 5.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            boxShadow:[
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 5.0,
                blurRadius: 5.0
              )
            ],
            color: Colors.white
          ),
        ),
      ),
    );
  }

