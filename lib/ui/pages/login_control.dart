/* import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:wp_project/ui/pages/home_page.dart';

class LoginControl extends StatelessWidget {
  const LoginControl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const HomePage();
          } else {
            // ignore: prefer_const_constructors
            return LoginControl();
          }
        },
      ),
    );
  }
}
 */