import 'package:flutter/material.dart';

void showSnakBar(BuildContext context, String message,
      {Color color = const Color.fromARGB(255, 95, 93, 93)}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      backgroundColor: color,
    ));
  }