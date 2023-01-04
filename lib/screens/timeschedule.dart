import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wewash_laundry_app/screens/payment.dart';
//import 'package:flutter/src/foundation/key.dart';
//import 'package:flutter/src/widgets/framework.dart';

class timeschedule extends StatefulWidget {
  const timeschedule({Key? key}) : super(key: key);

  @override
  State<timeschedule> createState() => _timescheduleState();
}

class _timescheduleState extends State<timeschedule> {
  int? selectedDate;
  int? selectedTime;
  int? selectedDeliveryDate;
  int? selectedDeliveryTime;
  bool isColored = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 125, 210, 208),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 125, 210, 208),
        centerTitle: true,
        title: const Text('Select Date and Time',
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
          padding: const EdgeInsets.all(24),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Select Pickup Date',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 100,
                width: double.infinity,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 30,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedDate = index;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            color: selectedDate == index
                                ? Colors.blue.shade50
                                : Colors.white,
                            border: Border.all(
                                color: selectedDate == index
                                    ? Colors.blue
                                    : Colors.grey.shade300,
                                width: 3),
                            borderRadius: BorderRadius.circular(12)),
                        height: 100,
                        width: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('${index + 1}',
                                style: const TextStyle(
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black87)),
                            const Text(
                              'Dec',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 12),
              const Text('Select Pickup Time',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 13,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedTime = index;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: selectedTime == index
                                ? Colors.blue.shade50
                                : Colors.white,
                            border: Border.all(
                                color: selectedTime == index
                                    ? Colors.blue
                                    : Colors.grey.shade300,
                                width: 2)),
                        height: 50,
                        width: 100,
                        child: Center(
                          child: Text('${index + 6}:00',
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black87)),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 12,
              ),
              const Text(
                'Select Delivery Date',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 100,
                width: double.infinity,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 30,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedDeliveryDate = index;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            color: selectedDeliveryDate == index
                                ? Colors.blue.shade50
                                : Colors.white,
                            border: Border.all(
                                color: selectedDeliveryDate == index
                                    ? Colors.blue
                                    : Colors.grey.shade300,
                                width: 3),
                            borderRadius: BorderRadius.circular(12)),
                        height: 100,
                        width: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('${index + 1}',
                                style: const TextStyle(
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black87)),
                            const Text(
                              'Dec',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 12),
              const Text('Select Delivery Time',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 13,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedDeliveryTime = index;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: selectedDeliveryTime == index
                                ? Colors.blue.shade50
                                : Colors.white,
                            border: Border.all(
                                color: selectedDeliveryTime == index
                                    ? Colors.blue
                                    : Colors.grey.shade300,
                                width: 2)),
                        height: 50,
                        width: 100,
                        child: Center(
                          child: Text('${index + 6}:00',
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black87)),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'Additional Notes',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 12),
              Container(
                padding: const EdgeInsets.all(12),
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: const Center(
                  child: TextField(
                    maxLines: 6,
                    style: TextStyle(fontWeight: FontWeight.w600),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        isCollapsed: true,
                        isDense: true,
                        hintStyle: TextStyle(fontWeight: FontWeight.w600),
                        hintText: 'Your notes here'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: Container(
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(12),
          ),
          child: ElevatedButton(
            child: const Text("Pay"),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Payment(),
              ),
            ),
          ),
          // child: const Center(
          //   child: Text('Done',
          //       style: TextStyle(
          //           fontSize: 16,
          //           fontWeight: FontWeight.w700,
          //           color: Colors.white)),
          // ),
        ),
      ),
    );
  }
}
