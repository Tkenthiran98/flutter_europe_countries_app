import 'package:flutter/material.dart';
 
void main() {
  runApp(EuropeCountriesApp());
}

class EuropeCountriesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Europe Countries',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
     );
  }
}
