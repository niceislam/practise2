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
