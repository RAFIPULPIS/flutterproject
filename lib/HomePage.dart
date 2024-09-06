import 'package:flutter/material.dart';
import 'DetailPage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.green[700],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.elliptical(300, 70),
                  bottomRight: Radius.elliptical(300, 70),
                )
              ),

            ),
            SizedBox(height: 20),
            Text(
              "Complete your grocery need easily",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              child: Row(
                
  mainAxisSize: MainAxisSize.min,
  children: [
    Text(
      "Get Started",
      style: TextStyle(fontSize: 18),
    ),
    SizedBox(width: 8.0), // Jarak antara teks dan ikon
    Icon(
      Icons.arrow_forward, // Ikon panah ke kanan
      size: 18,
      color: Colors.green, // Ukuran ikon
    ),
  ],
),

            ),
          ],
        ),
      ),
    );
  }
}
