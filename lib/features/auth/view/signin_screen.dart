import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../shared/widgets/custom_textfield.dart';
import '../../../shared/widgets/primary_button.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final emailController = TextEditingController();
  final usernameController = TextEditingController();
  final birthdayController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),

          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                const SizedBox(height: 40),

                const Text(
                  "Create\nAccount",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 40),

                CustomTextField(hint: "Email"),

                const SizedBox(height: 16),

                CustomTextField(hint: "Username"),

                const SizedBox(height: 16),

                CustomTextField(hint: "Birthday"),

                const SizedBox(height: 16),

                CustomTextField(hint: "Password"),

                const SizedBox(height: 30),

                PrimaryButton(
                  text: "Create Account",
                  onPressed: () {
                    context.go('/home');
                  },
                ),

                const SizedBox(height: 20),

                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text("Already have an account? Login"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
