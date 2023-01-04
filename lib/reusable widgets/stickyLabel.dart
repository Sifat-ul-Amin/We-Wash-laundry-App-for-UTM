import 'package:flutter/material.dart';

// import '../constant.dart';

class StickyLabel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(
        left: 24,
        top: 16,
      ),
      child: Text(
        "Card Information",
        style: TextStyle(
          color: Colors.black,
          fontSize: 20.0,
        ),
      ),
    );
  }
}
