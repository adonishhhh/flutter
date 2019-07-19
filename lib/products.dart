import 'package:flutter/material.dart';

class Products extends StatelessWidget{
  final List<String> products;

  Products(this.products);

  Widget _ListProducts(BuildContext context, int index){
    return Card(
      child: ClipRRect(
        borderRadius: new BorderRadius.circular(20.0),
        child: Column(
          children: <Widget>[
            Image.asset('assets/th.jpg',
              fit: BoxFit.fill,
              width: 400,

            ),
            Text(products[index],style: TextStyle(
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
    );
  }

  @override
  Widget build(BuildContext context) {
    if(products.length > 0){
      // TODO: implement build
      return  ListView.builder(
        itemBuilder: _ListProducts,
        itemCount: products.length,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
      );
    }else{
      return Center(
        child: Text("No Records Found"),
      );
    }
    
  }

}