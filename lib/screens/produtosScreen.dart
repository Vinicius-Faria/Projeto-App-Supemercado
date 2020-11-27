import 'package:flutter/material.dart';
import 'package:store/components/bottomBar.dart';
import 'package:store/screens/DrawerLogin.dart';
import 'package:store/widgets/promocao_screen.dart';

class ProdutosScreen extends StatefulWidget {
  @override
  _ProdutosScreenState createState() => _ProdutosScreenState();
}

class _ProdutosScreenState extends State<ProdutosScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
 

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length : 1, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 10.0,
        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.person),
            color: Colors.black,
            iconSize: 35.0,
           onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => DrawerLogin()));
           },
            ),
        title: Text(
          "Mineirinho",
          style: TextStyle(
              color: Colors.deepOrangeAccent,
              fontSize: 30.0,
              fontWeight: FontWeight.normal),
        ),
       
      ),
      body: ListView(
        //physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.only(left: 0.0),
        children: <Widget>[
          SizedBox(
            height: 20.0,
          ),
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.transparent,
            labelColor: Colors.deepOrangeAccent,
            isScrollable: true,
            labelPadding: EdgeInsets.only(right: 30.0),
            unselectedLabelColor: Colors.black,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.attach_money),
                child: Text(
                  "Promoção",
                  style:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 22.0),
                ),
              ),
                   
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height - 50.0,
            width: double.infinity,
            child: TabBarView(
              controller: _tabController,
              children: 
              [
               BebidasScreen(),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.deepOrangeAccent,
        child: Icon(Icons.shopping_basket),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}
