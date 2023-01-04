//import 'package:awesome_card/awesome_card.dart';
//import 'package:e_commerce/constant.dart';
//import 'package:e_commerce/notification/components/defaultAppBar.dart';
//import 'package:e_commerce/notification/components/defaultBackButton.dart';
//import 'package:e_commerce/widgets/stickyLabel.dart';
// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:wewash_laundry_app/screens/success.dart';

//import '../reusable widgets/constants.dart';
import '../reusable widgets/stickyLabel.dart';

class PaymentDetails extends StatefulWidget {
  // const PaymentDetails({required Key key}) : super(key: key);

  @override
  _PaymentDetailsState createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {
  String cardNumber = "5002 7002 4433 7654",
      cardExpiry = "9/25",
      cardHolderName = "Mi Chan",
      bankName = "CIMB Bank",
      cvv = "456";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 125, 210, 208),
      appBar: AppBar(
        title: const Text("Payment Details"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            StickyLabel(),
            const SizedBox(height: 8.0),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24.0),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 0.5,
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24.0,
                      vertical: 8.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("My Perosnal Card",
                            style: TextStyle(fontSize: 18.0)),
                        Container(
                            width: 60.0,
                            child: const Icon(Icons.payment,
                                color: Colors.black, size: 40.0)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Card Number",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              cardNumber,
                              style: const TextStyle(fontSize: 16.0),
                            ),
                          ],
                        ),
                        Container(
                          width: 45.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Exp.",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                cardExpiry,
                                style: const TextStyle(fontSize: 16.0),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24.0,
                      vertical: 8.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Card Name",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              cardHolderName,
                              style: const TextStyle(fontSize: 16.0),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 45.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "CVV",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                cvv,
                                style: const TextStyle(fontSize: 16.0),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 48.0,
                    width: MediaQuery.of(context).size.width,
                    child: TextButton(
                      child: const Text(
                        "Edit Detail",
                        style: TextStyle(fontSize: 16.0),
                      ),
                      // ignore: avoid_print
                      onPressed: () => print("Edit Detail"),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8.0),
            ElevatedButton(
              child: const Text("Confirm card"),
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Success(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
