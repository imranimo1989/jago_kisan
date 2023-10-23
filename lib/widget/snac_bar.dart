import 'package:flutter/material.dart';


showSnackMessage(context, message) {
       ScaffoldMessenger.of(context).showSnackBar(
           SnackBar(
               content: Text(message),
           duration: const Duration(milliseconds: 900)));


}
