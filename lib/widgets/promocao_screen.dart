import 'package:flutter/material.dart';

class BebidasScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                childAspectRatio: 0.7,
                children: <Widget>[
                  _buildCard('Coca - Cola 2 Litros', '\$4,99',
                      'assets/bebidas/coca.jpg', false, context),
                  _buildCard('Heineken Long Neck', '\$9,49',
                      'assets/bebidas/heineken.jpg', false, context),
                ],
              ))
        ],
      ),
    );
  }
}

Widget _buildCard(String nome, String preco, String img,
    bool addCash, context) {
  return Padding(
    padding: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 5.0, right: 5.0),
    child: InkWell(
      onTap: () {
        
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.deepOrangeAccent.withOpacity(0.08),
                  spreadRadius: 5.0,
                  blurRadius: 5.0)
            ],
            color: Colors.white),
        child: (Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
              ),
            ),
            Hero(
                tag: img,
                child: Container(
                  height: 135,
                  width: 135,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(img), fit: BoxFit.contain)),
                )),
            SizedBox(
              height: 1.0,
            ),
            Text(
              preco,
              style: TextStyle(
                  color: Colors.deepOrangeAccent,
                  fontStyle: FontStyle.normal,
                  fontSize: 20.0),
            ),
            Text(
              nome,
              style: TextStyle(
                  color: Colors.black,
                  fontStyle: FontStyle.normal,
                  fontSize: 15.0),
            ),
            Padding(
              padding: EdgeInsets.all(7.5),
              child: Container(
                color: Colors.black,
                height: 1.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 9.0, right: 9.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  if (!addCash) ...{
                    IconButton(icon: Icon(Icons.shopping_basket), onPressed: (){
                   
                    },
                    iconSize: 35,
                    )
                  }
                ],
              ),
            ),
            SizedBox(height: 10),
             Padding(
              padding: EdgeInsets.only(left: 9.0, right: 9.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(icon: Icon(Icons.remove_circle), onPressed: (){
                   
                  },
                  iconSize: 30,
                  color: Colors.orangeAccent[100],
                  ),
                  IconButton(icon: Icon(Icons.add_circle), onPressed: (){
                   
                  },
                  iconSize: 35,
                  color: Colors.orangeAccent[200],
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    ),
  );
}
