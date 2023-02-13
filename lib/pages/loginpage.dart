import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 100, left: 25, right: 25),
            child: TextFormField(
              decoration: InputDecoration(
                  label: const Text("Email/Phone"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 25, right: 25),
            child: TextFormField(
              decoration: InputDecoration(
                  label: const Text("Password"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28))),
            ),
          ),
        ]),
      ),
    );
  }
}
