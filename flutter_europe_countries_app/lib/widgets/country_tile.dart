import 'package:flutter/material.dart';
import '../models/country.dart';
import '../screens/country_detail_screen.dart';

class CountryTile extends StatelessWidget {
  final Country country;

  CountryTile({required this.country});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4, // Increased elevation for better shadow effect
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12), // Rounded corners for the card
      ),
      child: ListTile(
        contentPadding: EdgeInsets.all(12.0),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: Image.network(
            country.flagUrl,
            width: 80,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          country.name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        subtitle: Text(
          'Capital: ${country.capital}',
          style: TextStyle(color: Colors.grey[700], fontSize: 16),
        ),
        trailing: Icon(Icons.arrow_forward_ios, size: 20),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CountryDetailScreen(country: country),
            ),
          );
        },
      ),
    );
  }
}
