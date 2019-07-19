import 'package:flutter/material.dart';

class ProductAdd extends StatelessWidget{
  final Function addProduct;

  ProductAdd(this.addProduct);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(onPressed: (){
     addProduct("Vehicle Management from another file");
    },
      color: Color.fromRGBO(255, 0, 0, 1),
      child:Row(mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(Icons.add_circle),
          Text('Add Product')

        ],
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)
      ),
      highlightColor: Colors.white,
    );
  }

}