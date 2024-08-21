import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../services/api_service.dart';
import '../models/country.dart';
import '../widgets/country_tile.dart';
import '../widgets/sort_dropdown.dart';

class CountryListScreen extends StatefulWidget {
  @override
  _CountryListScreenState createState() => _CountryListScreenState();
}

class _CountryListScreenState extends State<CountryListScreen> {
  late Future<List<Country>> _countries;
  late List<Country> _sortedCountries;

  @override
  void initState() {
    super.initState();
    // Fetching countries data from API
    _countries = ApiService(Dio()).fetchCountries();
  }

  // Sorting countries based on selected criteria
  void _sortCountries(String criteria) {
    setState(() {
      if (criteria == 'Name') {
        _sortedCountries.sort((a, b) => a.name.compareTo(b.name));
      } else if (criteria == 'Population') {
        _sortedCountries.sort((a, b) => a.population.compareTo(b.population));
      } else if (criteria == 'Capital') {
        _sortedCountries.sort((a, b) => a.capital.compareTo(b.capital));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('European Countries', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blueAccent,
        elevation: 4,
      ),
      body: FutureBuilder<List<Country>>(
        future: _countries,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // Display loading indicator while fetching data
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            // Display error message if data fetching fails
            return Center(child: Text('Failed to load countries', style: TextStyle(color: Colors.red, fontSize: 16)));
          } else {
            _sortedCountries = snapshot.data!;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SortDropdown(onSelected: _sortCountries),
                ),
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    itemCount: _sortedCountries.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                        child: CountryTile(country: _sortedCountries[index]),
                      );
                    },
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
