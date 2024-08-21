import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_europe_countries_app/models/country.dart';

void main() {
  test('Country model should correctly parse JSON', () {
    final json = {
      "name": {"common": "Norway", "official": "Kingdom of Norway"},
      "capital": ["Oslo"],
      "flags": {"png": "https://flagcdn.com/w320/no.png"},
      "population": 5379475,
      "languages": {"nno": "Norwegian Nynorsk"}
    };

    final country = Country.fromJson(json);

    expect(country.name, 'Norway');
    expect(country.officialName, 'Kingdom of Norway');
    expect(country.capital, 'Oslo');
    expect(country.flagUrl, 'https://flagcdn.com/w320/no.png');
    expect(country.population, 5379475);
    expect(country.languages.values, contains('Norwegian Nynorsk'));
  });
}
