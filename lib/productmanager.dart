import 'package:flutter/material.dart';

import './products.dart';
import './drawer.dart';

import './productadd.dart';

import './clearProduct.dart';


class ProductManager extends StatefulWidget{
  final String startingProduct;

  ProductManager(this.startingProduct);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductManager();
  }

}

class _ProductManager extends State<ProductManager>{
 List<String> _products = [];
 int _selectedIndex = 0;
 @override
  void initState() {
    // TODO: implement initState
   if(widget.startingProduct != null){
     _products.add(widget.startingProduct);
   }

    super.initState();
  }

  void _addState(String name){
    setState(() {
      _products.add(name);
    });
  }

  void _clearState(){
    setState(() {
      _products.clear();
      //_products.add("Vehicle Mangemeneneen");

    });
  }

  Widget _Nested(){
    return NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool inneBoxIsScrolled){
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.red,
              expandedHeight: 300.0,
              floating: false,
              pinned: true,
              flexibleSpace:FlexibleSpaceBar(
                centerTitle: true,
                title: Text("Ecommerce",style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
                ),
                background: Image.asset("assets/th.jpg",
                fit: BoxFit.cover,
                ),

              ) ,
              actions: <Widget>[
              IconButton(icon: Icon(Icons.add_circle), onPressed: (){
                setState(() {
                  _products.add("Vehicle Management");
                });
              }),
                IconButton(icon: Icon(Icons.search), onPressed: null)
              ],
            ),

          ];
        },
        body: Center(
            widthFactor: 1,
            child:Center(
              child: Column(
                children: <Widget>[
                  Container(
                    child: ProductAdd(_addState),
                  ),
                  Expanded(child: Products(_products))

                ],
              ),
            )
        ),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        floatingActionButton: ClearProduct(_clearState),
        drawer: DrawerNo(),
        body: _Nested(),
      bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          title: Text('Business'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          title: Text('School'),
        ),
      ],
        selectedItemColor: Colors.amber[800],
        currentIndex: _selectedIndex,
        onTap: (int index){
        setState(() {
          _selectedIndex = index;
        });
        },
      ),

    ) ;
  }

}