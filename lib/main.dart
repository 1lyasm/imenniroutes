import 'package:flutter/material.dart';
import 'package:imenniroutes/map.dart';
import 'package:imenniroutes/gemini.dart';

void main() {
  runApp(
   MaterialApp(
    home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column( // Use Column for vertical arrangement
            mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
            children: [
              Text(
                'demos',
                style: TextStyle(fontSize: 32),
              ),
              SizedBox(height: 20), // Add space between text and button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => map()),
                );
                },
                child: Text('map'),
              ),
              SizedBox(height: 20), // Add space between text and button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => gemini()),
                );
                },
                child: Text('gemini'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
