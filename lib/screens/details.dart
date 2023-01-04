import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/src/foundation/key.dart';
//import 'package:flutter/src/widgets/framework.dart';
import 'package:wewash_laundry_app/screens/timeschedule.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  Map<String, Map<String, int>> order = {
    'shirt': {'price': 1, 'total': 0},
    'short': {'price': 1, 'total': 0},
    'trouser': {'price': 1, 'total': 0},
    'jacket': {'price': 1, 'total': 0},
    'dress': {'price': 1, 'total': 0},
    'shoe2': {'price': 1, 'total': 0},
    'others': {'price': 1, 'total': 0}
  };
  int totalPrice = 0;
  @override
  Widget build(BuildContext context) {
    Widget option(
        {String? image, String? name, int? price, String? type, int? delay}) {
      return Container(
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/$image',
              width: 48,
            ),
            const SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name!,
                    style: const TextStyle(fontWeight: FontWeight.w700)),
                const SizedBox(
                  height: 2,
                ),
                Text('\RM $price',
                    style: const TextStyle(
                        color: Colors.pink, fontWeight: FontWeight.w600))
              ],
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                setState(() {
                  if (order[type]!['total'] != 0) {
                    order[type]!['total'] = order[type]!['total']! - 1;
                    totalPrice = totalPrice - order[type]!['price']!;
                  }
                });
              },
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300, shape: BoxShape.circle),
                child: Center(
                  child: Icon(
                    Icons.remove,
                    size: 16,
                    color: Colors.grey.shade800,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            SizedBox(
              width: 24,
              child: Center(
                child: Text('${order[type]!['total']}',
                    style: const TextStyle(fontWeight: FontWeight.w700)),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  order[type]!['total'] = order[type]!['total']! + 1;
                  totalPrice = totalPrice + order[type]!['price']!;
                });
              },
              child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300, shape: BoxShape.circle),
                  child: Center(
                      child: Icon(
                    Icons.add,
                    size: 16,
                    color: Colors.grey.shade800,
                  ))),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 125, 210, 208),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 125, 210, 208),
        elevation: 0,
        centerTitle: true,
        title: const Text('Add Details',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black)),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              option(
                  image: 'shirt.png',
                  name: 'T-Shirt',
                  price: 1,
                  type: 'shirt',
                  delay: 150),
              option(
                  image: 'shorts.png',
                  name: 'Short',
                  price: 1,
                  type: 'short',
                  delay: 300),
              option(
                  image: 'trouser.jpg',
                  name: 'Trouser',
                  price: 1,
                  type: 'trouser',
                  delay: 450),
              option(
                  image: 'jacket.png',
                  name: 'Jacket',
                  price: 1,
                  type: 'jacket',
                  delay: 600),
              option(
                  image: 'dress.png',
                  name: 'Dress',
                  price: 1,
                  type: 'dress',
                  delay: 750),
              option(
                  image: 'shoe2.png',
                  name: 'Shoes',
                  price: 1,
                  type: 'shoe2',
                  delay: 900),
              option(
                  image: 'blanket.png',
                  name: 'Others',
                  price: 1,
                  type: 'others',
                  delay: 900),
              Text('Total Price \RM$totalPrice',
                  style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.black)),
            ],
          ),
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const timeschedule()));
        },
        child: Container(
          height: 60,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 30, 136, 223),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Center(
              child: Text('Done',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white)),
            ),
          ),
        ),
      ),
    );
  }
}
