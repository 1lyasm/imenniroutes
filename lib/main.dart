import 'package:flutter/material.dart';
import 'package:imenniroutes/gemini.dart';
import 'package:imenniroutes/map.dart';
import 'package:imenniroutes/tts.dart';

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
                    MaterialPageRoute(builder: (context) => const Map()),
                  );
                },
                child: const Text('map'),
              ),
              const SizedBox(height: 20), // Add space between text and button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Gemini()),
                  );
                },
                child: const Text('gemini'),
              ),
              const SizedBox(height: 20), // Add space between text and button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TextToSpeech()),
                  );
                },
                child: const Text('TTS'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
