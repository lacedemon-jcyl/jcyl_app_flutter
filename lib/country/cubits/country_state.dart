import 'package:jcyl_app_flutter/country/data/models/country_dto.dart';

class CountryState {
  final int counter;
  final CountryDto? countryDto;

  CountryState({required this.counter, this.countryDto});

  factory CountryState.initial() {
    return CountryState(counter: 0, countryDto: null);
  }

  CountryState copyWith({int? counter, CountryDto? countryDto}) {
    return CountryState(
      counter: counter ?? this.counter,
      countryDto: countryDto ?? this.countryDto,
    );
  }
}
