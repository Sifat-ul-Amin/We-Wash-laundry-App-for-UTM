// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wewash_laundry_app/screens/details.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, String>> services = [
    {'name': 'Washing', 'image': 'washing1.png'},
    {'name': 'Ironing', 'image': 'iron.png'},
    {'name': 'Drying', 'image': 'drying.png'},
    {'name': 'Shoe wash', 'image': 'shoe.png'},
  ];
  int? selected;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 125, 210, 208),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 125, 210, 208),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'WeWash Laundry',
          style: TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () {},
        ),
      ),
      floatingActionButton: selected != null
          ? GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Details()));
              },
              child: Container(
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.blue, blurRadius: 5, spreadRadius: 1)
                      ]),
                  child:
                      const Icon(Icons.arrow_forward_ios, color: Colors.white)),
            )
          : const SizedBox(),
      body: Container(
        padding: const EdgeInsets.all(24),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            const Text('Tasnia Nidhi',
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 36,
                    fontWeight: FontWeight.w700)),
            const Text('Choose your services',
                style: TextStyle(
                    color: Color.fromARGB(255, 230, 130, 164),
                    fontSize: 24,
                    fontWeight: FontWeight.w700)),
            const Spacer(),
            GridView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(vertical: 12),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8),
                itemCount: services.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selected = index;
                      });
                    },
                    child: Card(
                      color: selected == index
                          ? Colors.blue.shade50
                          : Colors.white,
                      shadowColor: Colors.blue,
                      elevation: selected == index ? 4 : 0,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color:
                                selected == index ? Colors.blue : Colors.white,
                            width: 4,
                          ),
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/${services[index]['image']}',
                            height: 100,
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Text(services[index]['name']!,
                              style:
                                  const TextStyle(fontWeight: FontWeight.w600))
                        ],
                      ),
                    ),
                  );
                }),
            const SizedBox(height: 48)
          ],
        ),
      ),
    );
  }
}
