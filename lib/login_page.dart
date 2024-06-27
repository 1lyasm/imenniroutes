import 'package:firebase_auth/firebase_auth.dart'
    hide EmailAuthProvider;
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:firebase_ui_oauth_google/firebase_ui_oauth_google.dart';
import 'package:flutter/material.dart';
import 'package:imenniroutes/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return SignInScreen(
            showAuthActionSwitch: false,
            providers: [
              GoogleProvider(
                  clientId:
                      "945051820712-8cab957ksotcevitle6fof8heoiir4ee.apps.googleusercontent.com"),
            ],
            subtitleBuilder: (context, constraints) {
              return Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Image.asset(
                        'assets/flutterfire_300x.png'),
                  ));
            },
          );
        }
        return const HomePage();
      },
    );
  }
}
