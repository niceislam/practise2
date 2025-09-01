import 'dart:developer';

import 'package:cgpa_calculator/ami_probashi/Home_body.dart';
import 'package:flutter/material.dart';

import '../calculator/widget.dart';

class AmiprobashiApp extends StatefulWidget {
  const AmiprobashiApp({super.key});

  @override
  State<AmiprobashiApp> createState() => _AmiprobashiAppState();
}

class _AmiprobashiAppState extends State<AmiprobashiApp> {
  int curentIndex = 0;
  List bottomPage = [
    HomeBody(),
    Text("second screen"),
    Text("3rd screen"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        iconTheme: IconThemeData(size: 29, color: Color(0xFF189F77)),
        title: Image(
          height: 80,
          width: 90,
          fit: BoxFit.fitWidth,
          image: NetworkImage(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxrqkghROfUty3T6z3JZWzZbpfcqBCYFEqsA&s",
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.mail_outline),
          ),
        ],
      ),
      drawer: Drawer(),
      body: bottomPage[curentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 50,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        showUnselectedLabels: false,
        unselectedIconTheme: IconThemeData(color: Colors.blue),

        backgroundColor: Color(0xFF189F77).withOpacity(0.2),
        mouseCursor: MouseCursor.uncontrolled,
        selectedFontSize: 20,
        selectedItemColor: Colors.black,
        iconSize: 32,
        unselectedFontSize: 16,
        currentIndex: curentIndex,
        onTap: (value) {
          curentIndex = value;
          setState(() {});
          log("==============$value============");
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: "School"),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_add),
            label: "Library",
          ),
        ],
      ),
    );
  }
}
