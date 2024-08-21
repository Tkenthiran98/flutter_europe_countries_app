// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Country _$CountryFromJson(Map<String, dynamic> json) => Country(
      name: json['name'] as String,
      officialName: json['officialName'] as String,
      capital: json['capital'] as String,
      flagUrl: json['flags'] as String,
      region: json['region'] as String,
      languages: Map<String, String>.from(json['languages'] as Map),
      population: (json['population'] as num).toInt(),
    );

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
      'name': instance.name,
      'officialName': instance.officialName,
      'capital': instance.capital,
      'flags': instance.flagUrl,
      'region': instance.region,
      'languages': instance.languages,
      'population': instance.population,
    };
