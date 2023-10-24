import 'package:flutter/material.dart';
import 'package:jago_kisan/widget/snac_bar.dart';

class LanguageSelectionPopup extends StatelessWidget {

  const LanguageSelectionPopup({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Select Language'),
      content: SizedBox(
        width: double.maxFinite,
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            ListTile(
              title: const Text('Bangla'),
              onTap: () {
                showSnackMessage(context, "You selected Bangla");
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('English'),
              onTap: () {
                showSnackMessage(context, "You selected English");
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
