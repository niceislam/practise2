import 'package:flutter/material.dart';

class TextfieldWidget extends StatelessWidget {
  const TextfieldWidget({
    super.key, this.semester, this.controller,
  });
  final String? semester;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorHeight: 25,
      style: TextStyle(fontSize: 22),
      decoration: InputDecoration(
        fillColor: Colors.black.withOpacity(0.1),
        filled: true,
        hintText: "${semester}",
        hintStyle: TextStyle(color: Colors.black, fontSize: 22),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none
        ),
      ),
    );
  }
}
class TempArrow extends StatelessWidget {
  const TempArrow({
    super.key, required this.title1, required this.title2,
  });
  final String title1;
  final String title2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          "${title1}",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        Icon(Icons.arrow_forward, size: 25, color: Colors.black),
        Text(
          "${title2}",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    super.key,
    this.tempController,
    this.hinttext,
    this.enabledText,
  });
  final String? hinttext;
  final bool? enabledText;
  final TextEditingController? tempController;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabledText,
      controller: tempController,
      cursorHeight: 25,
      style: TextStyle(fontSize: 22),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 10, ),
        fillColor: Colors.black.withOpacity(0.1),
        filled: true,
        hintText: "${hinttext}",
        hintStyle: TextStyle(color: Colors.black, fontSize: 22),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}


