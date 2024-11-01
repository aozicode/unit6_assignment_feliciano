import 'package:flutter/material.dart';

void main() {
  runApp(TabWidget2());
}

class TabWidget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffed83b5),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(
                  'assets/logo.png',
                  fit: BoxFit.contain,
                  height: 100,
                ),
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildBox('assets/palawan.JPG', 'Traveling'),
                buildBox('assets/badminton.jpg', 'Badminton'),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildBox('assets/percy.jpg', 'Reading'),
                buildBox('assets/swim.JPG', 'Swimming'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBox(String imagePath, String text) {
    return Container(
      width: 250,
      height: 200,
      decoration: BoxDecoration(
        color: Color(0xffec297b),
        border: Border.all(color: Color(0xfffff48b)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            width: 150,
            height: 150,
          ),
          SizedBox(height: 7),
          Text(
            text, 
            style: TextStyle(
              fontSize: 16, 
              color: Color(0xfff2e3e6),
              fontFamily: 'SpicyRice',
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
