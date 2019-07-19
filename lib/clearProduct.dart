import 'package:flutter/material.dart';

class ClearProduct extends StatelessWidget{

  final Function clearProduct;

  ClearProduct(this.clearProduct);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Colors.red,
      onPressed: (){
        clearProduct();
      }
      ,child: Icon(Icons.minimize ),
    );
  }

}