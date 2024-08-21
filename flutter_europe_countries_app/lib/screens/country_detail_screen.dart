import 'package:flutter/material.dart';
import '../models/country.dart';

class CountryDetailScreen extends StatelessWidget {
  final Country country;

  CountryDetailScreen({required this.country});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(country.name, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Display country flag
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.network(country.flagUrl, fit: BoxFit.cover),
            ),
            SizedBox(height: 16),
            Text('Capital: ${country.capital}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
            SizedBox(height: 8),
            Text('Population: ${country.population}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
            SizedBox(height: 8),
            Text('Region: ${country.region}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
            SizedBox(height: 8),
            Text('Languages: ${country.languages.values.join(', ')}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
          ],
        ),
      ),
    );
  }
}
