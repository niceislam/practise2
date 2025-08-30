import 'dart:developer';

import 'package:cgpa_calculator/calculator/widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController firstsemcontroller = TextEditingController();
  TextEditingController secondsemcontroller = TextEditingController();
  TextEditingController thirdsemcontroller = TextEditingController();
  TextEditingController forthsemcontroller = TextEditingController();
  TextEditingController fifthsemcontroller = TextEditingController();
  TextEditingController sixthsemcontroller = TextEditingController();
  TextEditingController seventhsemcontroller = TextEditingController();
  TextEditingController eightthsemcontroller = TextEditingController();
  double myres = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          "CGPA Calculator",
          style: TextStyle(color: Colors.white, fontSize: 22, letterSpacing: 2),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            spacing: 10,
            children: [
              SizedBox(height: 20),
              Text(
                "CGPA: ${myres.toStringAsFixed(2)}",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: TextfieldWidget(
                      controller: firstsemcontroller,
                      semester: "1st semester...",
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextfieldWidget(
                      controller: secondsemcontroller,
                      semester: "2nd semester...",
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: TextfieldWidget(
                      controller: thirdsemcontroller,
                      semester: "3rd semester...",
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextfieldWidget(
                      controller: forthsemcontroller,
                      semester: "4th semester...",
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: TextfieldWidget(
                      controller: fifthsemcontroller,
                      semester: "5th semester...",
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextfieldWidget(
                      controller: sixthsemcontroller,
                      semester: "6th semester...",
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: TextfieldWidget(
                      controller: seventhsemcontroller,
                      semester: "7th semester...",
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextfieldWidget(
                      controller: eightthsemcontroller,
                      semester: "8th semester...",
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 50,
                width: MediaQuery.sizeOf(context).width / 2,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.blue),
                  ),
                  onPressed: () {
                    myres =
                        (double.parse(firstsemcontroller.text) * .05) +
                        (double.parse(secondsemcontroller.text) * .05) +
                        (double.parse(thirdsemcontroller.text) * .05) +
                        (double.parse(forthsemcontroller.text) * .10) +
                        (double.parse(fifthsemcontroller.text) * .15) +
                        (double.parse(sixthsemcontroller.text) * .20) +
                        (double.parse(seventhsemcontroller.text) * .25) +
                        (double.parse(eightthsemcontroller.text) * .15);
                    setState(() {});
                  },
                  child: Text(
                    "Watch",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
