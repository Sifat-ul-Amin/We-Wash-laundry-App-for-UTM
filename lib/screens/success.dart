import 'package:flutter/material.dart';
import 'package:wewash_laundry_app/screens/home_screen.dart';

import '../reusable widgets/emptySection.dart';

class Success extends StatefulWidget {
  // const Success({required Key key}) : super(key: key);

  @override
  _SuccessState createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 125, 210, 208),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          EmptySection(),
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: const Text(
              "Your payment was done successfully",
              textAlign: TextAlign.center,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Text(
              "Thank you for your order!",
              textAlign: TextAlign.center,
            ),
          ),
          // SubTitle(
          //   subTitleText: 'Your payment was done successfully',
          // ),
          ElevatedButton(
            child: const Text("OK"),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
