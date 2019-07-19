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

 @override
  void initState() {
    // TODO: implement initState
   _products.add(widget.startingProduct);
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

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        floatingActionButton: ClearProduct(_clearState),
        appBar: AppBar(
          title: Text('EasyList'),
          backgroundColor: Color.fromRGBO(255, 0, 0, 1),
          centerTitle:true,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search),iconSize: 28.0, onPressed:null,),
            IconButton(icon: Icon(Icons.add_alarm),iconSize: 24.0,onPressed: null,),
          ],

        ),
        drawer: DrawerNo(),
        body: SingleChildScrollView(
          child: Center(
              widthFactor: 1,
              child:Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      child: ProductAdd(_addState),
                    ),
                    Products(_products)

                  ],
                ),
              )
          ),
        )
    ) ;
  }

}