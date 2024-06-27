import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:imenniroutes/gemini.dart';
import 'package:imenniroutes/map.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<ProfileScreen>(
                    builder: (context) => ProfileScreen(
                      appBar: AppBar(
                        title: const Text('User Profile'),
                      ),
                      actions: [
                        SignedOutAction((context) {
                          Navigator.of(context).pop();
                        })
                      ],
                    ),
                  ),
                );
              },
            )
          ],
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: Column(
            // Use Column for vertical arrangement
            mainAxisAlignment: MainAxisAlignment
                .center, // Center content vertically
            children: [
              const Text(
                'demos',
                style: TextStyle(fontSize: 32),
              ),
              const SizedBox(
                  height:
                      20), // Add space between text and button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const map()),
                  );
                },
                child: const Text('map'),
              ),
              const SizedBox(
                  height:
                      20), // Add space between text and button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const gemini()),
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
