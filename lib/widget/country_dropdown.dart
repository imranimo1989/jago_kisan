import 'package:flutter/material.dart';

class CountryDropdown extends StatefulWidget {
  const CountryDropdown({super.key});

  @override
  _CountryDropdownState createState() => _CountryDropdownState();
}

class _CountryDropdownState extends State<CountryDropdown> {
   String selectedCountry = 'Select Country'; // Initial selection

  final List<String> countries = [
    'Select Country',
    'United States',
    'Canada',
    'United Kingdom',
    'Australia',
    'India',
    'Germany',
    'France',
    // Add more countries as needed
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedCountry,
      iconSize: 36,
      isExpanded: true ,
      items: countries.map((String country) {
        return DropdownMenuItem<String>(
          value: country,
          child: Text(country),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          selectedCountry = newValue!;
        });
      },
    );
  }
}
