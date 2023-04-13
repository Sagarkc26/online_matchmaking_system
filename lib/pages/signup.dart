import 'package:flutter/material.dart';
import 'package:online_matchmaking_system/pages/loginpage.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool passwordVisible = true;
  bool repasswordVisible = true;
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordContoller = TextEditingController();
  final TextEditingController _repasswordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    _userController.dispose();
    _passwordContoller.dispose();
    _repasswordController.dispose();
    super.dispose();
  }

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
        child: Form(
          key: _key,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 25, right: 25),
              child: TextFormField(
                controller: _userController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter your Password";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email),
                    label: const Text("Email/Phone"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
              child: TextFormField(
                controller: _passwordContoller,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter your Password";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.password),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          passwordVisible = !passwordVisible;
                        });
                      },
                      icon: Icon(passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off)),
                  label: const Text("Create password"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28)),
                ),
                obscureText: passwordVisible,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
              child: TextFormField(
                controller: _repasswordController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter your Password";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.password),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            repasswordVisible = !repasswordVisible;
                          });
                        },
                        icon: Icon(repasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off)),
                    label: const Text("Re-enter password"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28))),
                obscureText: repasswordVisible,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 48,
              width: MediaQuery.of(context).size.width * 0.85,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      backgroundColor: const Color(0xff2B2D42)),
                  onPressed: () {
                    final isValid = _key.currentState!.validate();
                    if (isValid) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const LoginPage();
                      }));
                    }
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
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Already have an account?",
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.w500, color: Colors.red),
            ),
            const SizedBox(
              height: 20,
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
                    final isValid = _key.currentState!.validate();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const LoginPage();
                    }));
                  },
                  child: const Text("LOG IN")),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 100,
                ),
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
      ),
    );
  }
}
