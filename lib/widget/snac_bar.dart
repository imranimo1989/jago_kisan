import 'package:flutter/material.dart';


showSnackMessage(context, message) {
       ScaffoldMessenger.of(context).showSnackBar(
           SnackBar(
                  backgroundColor: Colors.red[800],
               content: Text(message),
           duration: const Duration(milliseconds: 900)));


}
