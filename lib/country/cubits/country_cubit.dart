import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jcyl_app_flutter/country/cubits/country_state.dart';
import 'package:jcyl_app_flutter/country/data/models/country_dto.dart';
import 'package:jcyl_app_flutter/country/data/services/rest_country_service.dart';

class CountryCubit extends Cubit<CountryState> {
  CountryCubit() : super(CountryState.initial());

  void increment() {
    int myCounter = state.counter;
    myCounter++;
    print(myCounter);

    emit(state.copyWith(counter: myCounter));
  }

  Future<void> getCountry(String name) async {
    final response = await RestCountryService().getCountry(name);
    print(response);
    CountryDto? myCountryName = response;
    emit(state.copyWith(countryDto: myCountryName));
  }
}
