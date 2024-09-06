import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {"name": "Orange", "price": 15, "stock": 1000},
    {"name": "Apple", "price": 20, "stock": 1000},
    {"name": "Banana", "price": 5, "stock": 1000},
    {"name": "Mango", "price": 15, "stock": 1000},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
     body: ListView.builder(
  itemCount: products.length,
  itemBuilder: (context, index) {
    final product = products[index];
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8.0), 
          child: Container(
            height: 200,
            width: 50,
            color: Colors.green, 
            child: Center(child: Text('Image')), 
          ),
        ),
        title: Text(product['name']),
        subtitle: Text('${product['stock']} ready stock'),
        trailing: Text('\$${product['price']}'),
      ),
    );
  },
),

    );

  }
}
