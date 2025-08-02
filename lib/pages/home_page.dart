import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Row(
        children: [
         
         //Side Menu
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.red,
            ),
          ),

          //Dashboard
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.green,
            ),
          ),

          //Summary
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.blue,
            ),
          ),
        ],
      )),
    );
  }
}