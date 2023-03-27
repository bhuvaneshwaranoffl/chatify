import 'package:flutter/material.dart';

const textInputDecoration = InputDecoration(
  labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.purple, width: 2)),
  enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.purpleAccent, width: 2)),
  errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.redAccent, width: 2)),
);

void nextScreen(context, page) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}

void nextScreenReplace(context, page) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => page));
}

// ignore: non_constant_identifier_names
void ShowSnackbar(context, color, message) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(
      message,
      style: const TextStyle(fontSize: 15),
    ),
    backgroundColor: color,
    duration: const Duration(seconds: 2),
    action: SnackBarAction(
      label: "ok",
      onPressed: () {},
      textColor: Colors.white,
    ),
  ));
}
