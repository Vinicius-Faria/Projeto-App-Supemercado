import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TelaVersion extends StatelessWidget {
  const TelaVersion({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.loose,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.deepOrangeAccent),
          ),
          Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 130.0),
                      ),
                      Text(
                        "  Principal objetivo do aplicatico : ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30.0,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "    Nesses dias dificeis que estamos passando, o Mercadinho Mineirinho pensou em " +
                            "uma nova forma de Supermercado na cidade, o aplicativo Mineirinho." +
                            "\n Nele você irá poder conferir os nossos preços e poderá pedir diretamente da sua casa, " +
                            "que entregaremos até você.",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24.0,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 80),
                      Text(
                        "Desenvolvido por Vinicius Augusto.",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                       IconButton(
                            icon: Icon(Icons.call),
                            color: Colors.black,
                            iconSize: 25.0,
                            onPressed: (){
                             launch('tel:35 984391669');
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.mail_outline),
                            color: Colors.black,
                            iconSize: 25.0,
                            onPressed: (){
                             launch('mailto:<viniciguto1@gmail.com>?subject=<Duvidas e sugestões>&body=<body>');
                            },
                          ),
                      SizedBox(height: 380),
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        iconSize: 35,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
