import 'package:flutter/material.dart';

// import '../constant.dart';

class EmptySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Image(
          //   image: AssetImage(emptyImg),
          //   height: 150.0,
          // ),
          Image.asset("assets/images/success.gif"),
          const Padding(
            padding: EdgeInsets.only(top: 16),
            child: Text(
              "Successful!",
            ),
          ),
        ],
      ),
    );
  }
}
