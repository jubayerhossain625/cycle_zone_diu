import 'package:flutter/material.dart';

void createSnackBar(String message, BuildContext context , Color color) {
  final snackBar = SnackBar(
    content: Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Text(message),
    ),
    backgroundColor: color ,
    duration: const Duration(seconds: 2),
  );
  ScaffoldMessenger.of(context).showSnackBar(
    snackBar,
  );
}