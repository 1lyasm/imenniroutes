import 'package:flutter/material.dart';

class gemini extends StatelessWidget {
  const gemini({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'IŞ GÖR ИЛЯ',
          style: TextStyle(
            fontSize: 80.0, // Set a large font size
            fontWeight: FontWeight.bold, // Make the text bold
            color: Colors.black, // Use simple black color
          ),
        ),
      ),
    );
  }
}
