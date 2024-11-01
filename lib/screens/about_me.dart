import 'package:flutter/material.dart';
import 'package:unit7assignmentfeliciano/components/tab_widget_2.dart';
import 'package:unit7assignmentfeliciano/components/tab_widget_1.dart';

class About_Me extends StatefulWidget {
  const About_Me({super.key});

  @override
  State<About_Me> createState() => _About_MeState();
}

class _About_MeState extends State<About_Me> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, 
      child: Scaffold(
        appBar: AppBar(
          title: Text('About Me'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Info'), // First tab
              Tab(text: 'Hobbies'), // Second tab
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TabWidget1(), 
            TabWidget2(), 
          ],
        ),
      ),
    );
  }
}
