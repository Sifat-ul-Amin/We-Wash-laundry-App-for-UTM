import 'package:flutter/material.dart';

// import '../constant.dart';

class HeaderLabel extends StatelessWidget {
  final String headerText;
  const HeaderLabel({
    required Key key,
    required this.headerText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Text(
        headerText,
        style: const TextStyle(color: Colors.grey, fontSize: 28.0),
      ),
    );
  }
}
