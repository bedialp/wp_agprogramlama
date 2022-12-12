import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  Future resetPassword() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: _emailController.text.trim());
      showDialog(
        context: context,
        builder: ((context) {
          return const AlertDialog(
            content: Text('Password reset link send! Check your email'),
          );
        }),
      );
    } on FirebaseAuthException catch (e) {
      showDialog(
        context: context,
        builder: ((context) {
          return AlertDialog(
            content: Text(e.message.toString()),
          );
        }),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[300],
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              'Enter your email and we will send you password reset link',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22),
            ),
          ),

          const SizedBox(height: 10),

          //email textfield
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(14),
              ),
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.deepPurple),
                      borderRadius: BorderRadius.circular(12)),
                  border: InputBorder.none,
                  hintText: 'Email',
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),

          MaterialButton(
            onPressed: resetPassword,
            color: Colors.deepPurple[300],
            child: const Text(
              'Reset password!',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
