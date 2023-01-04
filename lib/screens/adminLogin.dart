import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:wewash_laundry_app/screens/adminHomepage.dart';
import 'package:wewash_laundry_app/screens/home_screen.dart';
import 'package:wewash_laundry_app/screens/signin_screen.dart';
import 'package:wewash_laundry_app/screens/signup_screen.dart';

import '../reusable widgets/reusable_widgets.dart';
import '../utils/colors_utils.dart';
import 'Home_screen.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({Key? key}) : super(key: key);

  @override
  _AdminLoginState createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringToColor("81ebe0"),
          hexStringToColor("a1f0e8"),
          hexStringToColor("c2f5f0"),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.1, 20, 0),
            child: Column(
              children: <Widget>[
                const Text(
                  "WeWash Laundry",
                  style: TextStyle(
                      color: Color.fromARGB(255, 235, 81, 133),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Admin Login",
                  style: TextStyle(
                      color: Color.fromARGB(255, 41, 39, 39),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                logoWidget("assets/images/logo2.png"),
                const SizedBox(
                  height: 30,
                ),
                reusableTextField("Enter admin email", Icons.person_outline,
                    false, _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter admin Password", Icons.lock_outline,
                    true, _passwordTextController),
                const SizedBox(
                  height: 5,
                ),
                forgetPassword(context),
                firebaseUIButton(
                  context,
                  "Sign in admin",
                  () {
                    FirebaseAuth.instance
                        .signInWithEmailAndPassword(
                            email: _emailTextController.text,
                            password: _passwordTextController.text)
                        .then((value) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            if (FirebaseAuth.instance.currentUser?.uid ==
                                "1q03lLz4RNYAt5SzUFu0Ylhlbky2") {
                              return AdminHomepage();
                            } else {
                              return SignUpScreen();
                            }
                          },
                        ),
                      );
                    }).onError((error, stackTrace) {
                      print("Error ${error.toString()}");
                    });
                  },
                ),
                signUpOption()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have account?",
            style: TextStyle(color: Colors.black)),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SignUpScreen()));
          },
          child: const Text(
            " Sign Up",
            style: TextStyle(
                color: Colors.pinkAccent, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

  Widget forgetPassword(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 35,
      alignment: Alignment.bottomRight,
      child: TextButton(
          child: const Text(
            "Forgot Password?",
            style: TextStyle(color: Colors.black),
            textAlign: TextAlign.right,
          ),
          onPressed: () {}),
    );
  }
}
