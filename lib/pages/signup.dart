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
              padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
              child: Container(
                height: 80,
                width: 120,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://1000logos.net/wp-content/uploads/2023/01/Tinder-Logo-2012.png"))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black38,
                          blurRadius: 11,
                          offset: Offset(0, 7))
                    ]),
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
                      fillColor: Colors.grey[50],
                      filled: true,
                      prefixIcon: const Icon(Icons.email),
                      label: const Text("Email/Phone"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(28))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black38,
                          blurRadius: 11,
                          offset: Offset(0, 7))
                    ]),
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
                    fillColor: Colors.grey[50],
                    filled: true,
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
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black38,
                          blurRadius: 11,
                          offset: Offset(0, 7))
                    ]),
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
                      fillColor: Colors.grey[50],
                      filled: true,
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
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.85,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28)),
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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Row(
              children: const [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                ),
                Text(
                  "OR",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.066,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 45,
                  width: 45,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("images/facebook.png"))),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                Container(
                  height: 45,
                  width: 45,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("images/google.png"))),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                Container(
                  height: 45,
                  width: 45,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("images/twitter.png"))),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.066,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                color: Colors.black,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account?",
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(
                  width: 3,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return const LoginPage();
                    }));
                  },
                  child: const Text(
                    "Log In",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
