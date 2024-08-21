import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_europe_countries_app/models/country.dart';
import 'package:flutter_europe_countries_app/widgets/country_tile.dart';

void main() {
  testWidgets('CountryTile displays country information correctly', (WidgetTester tester) async {
    // Arrange: Set up the Country object with the necessary data
    final country = Country(
      name: 'Norway',
      officialName: 'Kingdom of Norway',
      capital: 'Oslo',
      flagUrl: 'https://flagcdn.com/w320/no.png',
      region: 'Europe',
      languages: {'nno': 'Norwegian Nynorsk', 'nob': 'Norwegian Bokmål'},
      population: 5379475,
    );

    // Act: Build the widget and trigger a frame
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: CountryTile(country: country),
      ),
    ));

    // Assert: Verify that the widget displays the correct information
    expect(find.text('Norway'), findsOneWidget);
    expect(find.text('Capital: Oslo'), findsOneWidget);
    expect(find.byType(Image), findsOneWidget);
  });
}
