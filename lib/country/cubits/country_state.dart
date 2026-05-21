import 'package:jcyl_app_flutter/country/data/models/country_dto.dart';

class CountryState {
  final int counter;
  final String name;
  final String id;
  final CountryDto? countryDto;

  CountryState({
    required this.counter,
    this.countryDto,
    required this.name,
    required this.id,
  });

  factory CountryState.initial() {
    return CountryState(counter: 0, countryDto: null, name: '', id: '');
  }

  CountryState copyWith({
    int? counter,
    CountryDto? countryDto,
    String? name,
    String? id,
  }) {
    return CountryState(
      counter: counter ?? this.counter,
      countryDto: countryDto ?? this.countryDto,
      name: name ?? this.name,
      id: id ?? this.id,
    );
  }
}
