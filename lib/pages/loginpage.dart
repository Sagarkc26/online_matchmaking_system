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
          SizedBox(
            height: 45,
          ),
          SizedBox(
            height: 40,
            width: 200,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff2B2D42),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              onPressed: () {},
              child: Text("LOG IN"),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text("forget password"),
          const Text("OR"),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff2B2D42),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              onPressed: () {},
              child: Text("SIGN UP")),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.facebook)),
              IconButton(onPressed: () {}, icon: Icon(Icons.facebook)),
              IconButton(onPressed: () {}, icon: Icon(Icons.facebook))
            ],
          )
        ]),
      ),
    );
  }
}
