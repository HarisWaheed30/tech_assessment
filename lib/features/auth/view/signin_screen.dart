import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const SizedBox(height: 60),

            const Text(
              "Create Account",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 30),

            const TextField(decoration: InputDecoration(hintText: "Email")),

            const SizedBox(height: 15),

            const TextField(decoration: InputDecoration(hintText: "Username")),

            const SizedBox(height: 15),

            const TextField(decoration: InputDecoration(hintText: "Birthday")),

            const SizedBox(height: 15),

            const TextField(decoration: InputDecoration(hintText: "Password")),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                context.go('/home');
              },
              child: const Text("Next"),
            ),
          ],
        ),
      ),
    );
  }
}
