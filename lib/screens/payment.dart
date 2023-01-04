import 'package:flutter/material.dart';
import 'package:wewash_laundry_app/screens/paymentDetails.dart';
import 'package:wewash_laundry_app/screens/success.dart';

class Payment extends StatefulWidget {
  // const Payment({required Key key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 125, 210, 208),
      appBar: AppBar(
        title: const Text('Payment'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          const Text("Choose Your Payment Method"),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Radio(
              activeColor: Colors.pink,
              value: 2,
              groupValue: value,
              onChanged: (i) => setState(() => value == i),
            ),
            title: Text("Credit Card"),
            trailing:
                Icon(Icons.credit_card, color: Color.fromARGB(255, 22, 14, 13)),
            tileColor: Colors.blueGrey,
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Radio(
              activeColor: Colors.pink,
              value: 2,
              groupValue: value,
              onChanged: (i) => setState(() => value == i),
            ),
            title: Text("Credit Card"),
            trailing:
                Icon(Icons.credit_card, color: Color.fromARGB(255, 22, 14, 13)),
            tileColor: Colors.blueGrey,
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Radio(
              activeColor: Colors.pink,
              value: 2,
              groupValue: value,
              onChanged: (i) => setState(() => value == i),
            ),
            title: Text("Credit Card"),
            trailing:
                Icon(Icons.credit_card, color: Color.fromARGB(255, 22, 14, 13)),
            tileColor: Colors.blueGrey,
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Radio(
              activeColor: Colors.pink,
              value: 2,
              groupValue: value,
              onChanged: (i) => setState(() => value == i),
            ),
            title: Text("Credit Card"),
            trailing:
                Icon(Icons.credit_card, color: Color.fromARGB(255, 22, 14, 13)),
            tileColor: Colors.blueGrey,
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Radio(
              activeColor: Colors.pink,
              value: 2,
              groupValue: value,
              onChanged: (i) => setState(() => value == i),
            ),
            title: Text("Credit Card"),
            trailing:
                Icon(Icons.credit_card, color: Color.fromARGB(255, 22, 14, 13)),
            tileColor: Colors.blueGrey,
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            child: const Text("Pay"),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => PaymentDetails(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
