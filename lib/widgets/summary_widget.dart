import 'package:flutter/material.dart';

class Summary extends StatefulWidget {
  const Summary({super.key});

  @override
  State<Summary> createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Summary",
           style: TextStyle(
            color: const Color.fromARGB(255, 148, 161, 172),
          ),
        ),
      ),
    );
  }
}