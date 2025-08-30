import 'package:cgpa_calculator/calculator/widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Temperature extends StatefulWidget {
  const Temperature({super.key});

  @override
  State<Temperature> createState() => _TemperatureState();
}

class _TemperatureState extends State<Temperature> {
  TextEditingController tempController = TextEditingController();
  double celcius = 0;
  bool reversmsg = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Temperature", style: TextStyle(fontSize: 25)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            reversmsg == true
                ? TempArrow(title1: 'Fahrenheit', title2: 'Celsius')
                : TempArrow(title1: 'Celsius', title2: 'Fahrenheit'),
            SizedBox(height: 15),
            CustomTextfield(
              tempController: tempController,
              hinttext: "Type F or C",
            ),
            SizedBox(height: 15),
            InkWell(
              onTap: () {
                reversmsg == false
                    ? celcius =
                        (((double.parse(tempController.text)) - 32) / (9 / 5))
                    : celcius =
                        ((double.parse(tempController.text) * 9 / 5) + 32);
                reversmsg = !reversmsg;
                setState(() {});
              },
              child: CircleAvatar(child: Icon(Icons.swap_horiz, size: 30)),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 50,
              width: MediaQuery.sizeOf(context).width / 2,
              child: CustomTextfield(
                enabledText: false,
                hinttext:
                    "Result: ${celcius.toStringAsFixed(2)} ${reversmsg == true ? "C" : "F"}",
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 60,
              width: 200,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.blue),
                  foregroundColor: WidgetStatePropertyAll(Colors.white),
                ),
                onLongPress: () {
                  tempController.clear();
                },
                onPressed: () {
                  celcius =
                      ((double.parse(tempController.text) * 9 / 5) + 32);
                  setState(() {});
                  reversmsg = false;
                },
                child: Text("Tap", style: TextStyle(fontSize: 25)),
              ),
            ),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
