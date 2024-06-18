import 'package:flutter/material.dart';
import 'package:imenniroutes/gemini.dart';
import 'package:imenniroutes/map.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            // Use Column for vertical arrangement
            mainAxisAlignment:
                MainAxisAlignment.center, // Center content vertically
            children: [
              const Text(
                'demos',
                style: TextStyle(fontSize: 32),
              ),
              const SizedBox(height: 20), // Add space between text and button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const map()),
                  );
                },
                child: const Text('map'),
              ),
              const SizedBox(height: 20), // Add space between text and button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const gemini()),
                  );
                },
                child: const Text('gemini'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
