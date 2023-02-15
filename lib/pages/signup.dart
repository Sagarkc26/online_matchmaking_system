import 'package:flutter/material.dart';
import 'package:online_matchmaking_system/pages/loginpage.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Column(children: [
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
          padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
          child: TextFormField(
            decoration: InputDecoration(
                label: const Text("Create password"),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
          child: TextFormField(
            decoration: InputDecoration(
                label: const Text("Re-enter password"),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28))),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          height: 40,
          width: 200,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  backgroundColor: const Color(0xff2B2D42)),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const LoginPage();
                }));
              },
              child: const Text("SIGN UP")),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Padding(
              padding: EdgeInsets.only(right: 40),
              child: Text(
                "forget password??",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.red),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
