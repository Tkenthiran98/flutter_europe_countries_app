 
part 'country.g.dart'; // This part file is generated by the build_runner

class Country {
// Define the properties of the Country class
  final String name;
  final String officialName; 
  final String capital;
  final String flagUrl;
  final String region;
  final Map<String, String> languages;
  final int population;

// Constructor for the Country class
  Country({
    required this.name,
    required this.officialName,
    required this.capital,
    required this.flagUrl,
    required this.region,
    required this.languages,
    required this.population,
  });

  // Factory constructor to create a Country instance from JSON
  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      name: json['name']['common'] as String,
      officialName: json['name']['official'] as String, 
      capital: (json['capital'] as List<dynamic>).first as String,
      flagUrl: json['flags']['png'] as String,
      region: json['region'] as String,
      languages: Map<String, String>.from(json['languages']),
      population: json['population'] as int,
    );
  }
}
