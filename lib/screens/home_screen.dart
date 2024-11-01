import 'package:flutter/material.dart';
import 'about_me.dart'; 

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget _gridItem(BuildContext context, IconData icon, String title) {
    return Row(
      children: [
        Icon(icon, color: Color(0xffec297b)),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Center(
          child: Image.asset(
            'assets/logo.png',
            fit: BoxFit.contain, 
          ),
        ),
        toolbarHeight: 100, 
      ),
      body: Row(  
        mainAxisAlignment: MainAxisAlignment.start, 
        children: [
          Flexible(
            flex: 2, 
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                'assets/mypic.png',
                width: 700, 
                height: 700, 
                fit: BoxFit.contain, 
              ),
            ),
          ),
          SizedBox(width: 15), 
          Expanded(
            flex: 3, 
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "WELCOME TO MY LIFE!",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xffec297b),
                  ),
                ),
                SizedBox(height: 20), 
                Text(
                  "Ashley Denise Feliciano",
                  style: TextStyle(
                    fontSize: 40,
                    color: Color(0xffed83b5),
                    fontFamily: 'SpicyRice',
                  ),
                ),
                SizedBox(height: 15), 
                _gridItem(context, Icons.arrow_right, 'BSCS 3B-AI'),
                _gridItem(context, Icons.arrow_right, 'Girlypop'),
                SizedBox(height: 20), 
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => About_Me()), 
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xfff2e3e6), 
                    foregroundColor: Color(0xffec297b), 
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12), 
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30), 
                    ),
                    elevation: 3, 
                  ),
                  child: Text(
                    "About Me",
                    style: TextStyle(
                      fontSize: 16, 
                      fontWeight: FontWeight.bold, 
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
