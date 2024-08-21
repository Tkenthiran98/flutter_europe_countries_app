import 'package:flutter_test/flutter_test.dart';
import 'package:dio/dio.dart';
import 'package:flutter_europe_countries_app/services/api_service.dart';
import 'package:flutter_europe_countries_app/models/country.dart';

void main() {
  test('ApiService should fetch and parse countries correctly', () async {
    final dio = Dio();
    final apiService = ApiService(dio);

    final countries = await apiService.fetchCountries();

    expect(countries, isA<List<Country>>());
    expect(countries.isNotEmpty, true);
  });
}
