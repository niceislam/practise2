import 'package:flutter/material.dart';

class TextfieldWidget extends StatelessWidget {
  const TextfieldWidget({super.key, this.semester, this.controller});
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
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}

class TempArrow extends StatelessWidget {
  const TempArrow({super.key, required this.title1, required this.title2});
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
        contentPadding: EdgeInsets.only(left: 10),
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


class SlideItemWidget extends StatelessWidget {
  const SlideItemWidget({super.key, this.title, this.subtitle, this.icon});
  final String? title;
  final String? subtitle;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.sizeOf(context).width / 1.6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,

          colors: [Color(0xFF7E7C22), Color(0xFF189F77)],
        ),
        boxShadow: [
          BoxShadow(color: Color(0xFF189F77), spreadRadius: 1, blurRadius: 3),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 12, left: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, size: 60, color: Colors.white),
            Text(
              "${title}",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            Text(
              maxLines: 1,
              "${subtitle}",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class RowServicewidget extends StatelessWidget {
  const RowServicewidget({super.key, this.title, this.viewall});
  final String? title;
  final String? viewall;

  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        Text(
          "${title}",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        Icon(Icons.arrow_forward_ios, color: Colors.grey),
        Spacer(),
        Text(
          "${viewall?? ""}",
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        SizedBox(width: 10,)
      ],
    );
  }
}
class ServiceItemWidget extends StatelessWidget {
  const ServiceItemWidget({
    super.key, this.icon, this.title,
  });
  final IconData? icon;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 150,
        width: 120,
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(icon, color: Colors.black, size: 60),
              SizedBox(height: 5),
              SizedBox(
                height: 60,
                width: 80,
                child: Text(
                  textAlign: TextAlign.center,
                  "${title ?? ""}",
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


