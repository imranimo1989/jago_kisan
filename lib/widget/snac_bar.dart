import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      duration: Duration(
          seconds: 3), // Set the duration for how long the Snackbar should be visible
    ),
  );
}