import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {"name": "Fruit", "icon": Icons.directions_bus_outlined},
    {"name": "Vegetable", "icon": Icons.eco},
    {"name": "Cookies", "icon": Icons.cookie},
    {"name": "Meat", "icon": Icons.set_meal},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
     appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pushNamed(context, '/home'); // Mengarahkan ke HomePage
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_forward, color: Colors.black),
            onPressed: () {
              Navigator.pushNamed(context, '/listview'); // Mengarahkan ke ListViewPage
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your Balance",
              style: TextStyle(fontSize: 18, color: Colors.grey[700]),
            ),
            SizedBox(height: 10),
            Text(
              "\$1,700.00",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
          Container(
  height: 150,
  decoration: BoxDecoration(
    color: Colors.green, // Warna background
    borderRadius: BorderRadius.circular(15), // Border radius 15
  ),
  child: Center(
    child: Text(
      "Buy Orange 10 Kg\nGet discount 25%",
      style: TextStyle(
        fontSize: 18,
        color: Colors.white,
      ),
      textAlign: TextAlign.center,
    ),
  ),
),

            SizedBox(height: 20),
            Text(
              "buat kamu",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Jumlah kolom dalam grid
                  childAspectRatio: 3 / 2, // Rasio aspek untuk item dalam grid
                  crossAxisSpacing: 10, // Jarak horizontal antar item
                  mainAxisSpacing: 10, // Jarak vertikal antar item
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green[50],
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3), // posisi bayangan
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          product['icon'],
                          size: 50,
                          color: Colors.green,
                        ),
                        SizedBox(height: 10),
                        Text(
                          product['name'],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
