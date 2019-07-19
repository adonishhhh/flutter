import 'package:flutter/material.dart';

class Products extends StatelessWidget{
  final List<String> products;

  Products(this.products);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Column(
        children: products.map((element) => Card(
          child: ClipRRect(
            borderRadius: new BorderRadius.circular(20.0),
            child: Column(
              children: <Widget>[
                Image.asset('assets/th.jpg',
                  fit: BoxFit.fitHeight,
                  width: 600,

                ),
                Text(element,style: TextStyle(
                    fontSize: 20,
                    fontWeight:FontWeight.bold,
                    fontStyle: FontStyle.italic
                ),)
              ],
            ),
          ),
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)
          ),
        ),
        ).toList()
    );
  }

}