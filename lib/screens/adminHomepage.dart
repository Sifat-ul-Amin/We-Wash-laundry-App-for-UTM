import 'package:flutter/material.dart';

class AdminHomepage extends StatefulWidget {
  AdminHomepage({Key? key}) : super(key: key);

  @override
  State<AdminHomepage> createState() => _AdminHomepageState();
}

class _AdminHomepageState extends State<AdminHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Welcome Admin!"),
          titleTextStyle: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: Center(
            child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ListTile(
                    title: Text("Order 1"),
                    subtitle: Text("Dry Washing"),
                    tileColor: Colors.red),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                    title: Text("Order 2"),
                    subtitle: Text("Ironing"),
                    tileColor: Colors.red),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                    title: Text("Order 3"),
                    subtitle: Text("Shoe Wash"),
                    tileColor: Colors.red),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                    title: Text("Order 4"),
                    subtitle: Text("Dry Washing"),
                    tileColor: Colors.red),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                    title: Text("Order 5"),
                    subtitle: Text("Dry Wash"),
                    tileColor: Colors.red),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                    title: Text("Order 6"),
                    subtitle: Text("Ironing"),
                    tileColor: Colors.red),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                    title: Text("Order 7"),
                    subtitle: Text("Ironing"),
                    tileColor: Colors.red),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                    title: Text("Order 8"),
                    subtitle: Text("Ironing"),
                    tileColor: Colors.red),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                    title: Text("Order 9"),
                    subtitle: Text("Ironing"),
                    tileColor: Colors.red),
                SizedBox(
                  height: 20,
                ),
                //SizedBox(height: 100, child: Image.asset("assets/upic.png", fit: BoxFit.contain)),
                SizedBox(
                  height: 100,
                ),

                // ListTile(tileColor: Colors.red);subtitle:Text("Ironing"),
              ],
            ),
          ),
        )));
  }
}
