import 'package:flutter/material.dart';


showSnackMessage(context, message) {
       ScaffoldMessenger.of(context).showSnackBar(
           SnackBar(
                  backgroundColor: Colors.red[800],
              // behavior: SnackBarBehavior.floating,
               dismissDirection: DismissDirection.down,
               content: Text(message),
           duration: const Duration(milliseconds: 900)));


}
