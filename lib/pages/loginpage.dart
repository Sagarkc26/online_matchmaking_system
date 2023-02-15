import 'package:flutter/material.dart';
import 'package:online_matchmaking_system/pages/signup.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
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
          const SizedBox(
            height: 45,
          ),
          SizedBox(
            height: 40,
            width: 200,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff2B2D42),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              onPressed: () {},
              child: const Text("LOG IN"),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text(
                  "forget password??",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.red,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "OR",
            style: TextStyle(
                fontSize: 16, color: Colors.red, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 40,
            width: 100,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff2B2D42),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Signup();
                  }));
                },
                child: const Text("SIGN UP")),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  iconSize: 50,
                  onPressed: () {},
                  icon: const Icon(Icons.facebook)),
              IconButton(
                  iconSize: 50,
                  onPressed: () {},
                  icon: const Icon(Icons.facebook)),
              IconButton(
                  iconSize: 50,
                  onPressed: () {},
                  icon: const Icon(Icons.facebook))
            ],
          )
        ]),
      ),
    );
  }
}
