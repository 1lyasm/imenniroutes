import 'package:flutter/material.dart';

class TextToSpeech extends StatefulWidget {

  const TextToSpeech({super.key});

  @override
  State<TextToSpeech> createState() => _TextToSpeechState();
}

class _TextToSpeechState extends State<TextToSpeech> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'TTS',
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
