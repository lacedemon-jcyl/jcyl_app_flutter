import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jcyl_app_flutter/country/cubits/country_state.dart';
import 'package:jcyl_app_flutter/country/data/models/country_dto.dart';
import 'package:jcyl_app_flutter/country/data/services/country_firestore_service.dart';
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

  Future<void> addCountryDataToFirestore() async {
    if (state.countryDto != null) {
      Map<String, dynamic> countryData = {
        'id': state.countryDto!.name.common, // Usar el nombre común como ID
        'name': 'nuevo nombre',
      };

      await CountryFirestoreService.saveAndUpdateCountryData(countryData);

      emit(state.copyWith(name: countryData['name'], id: countryData['id']));
    } else {
      print('No hay datos de país para guardar en Firestore');
    }
  }

  Future<void> deleteCountryDataFromFirestore() async {
    if (state.countryDto != null) {
      Map<String, dynamic> countryData = {
        'id': state.countryDto!.name.common, // Usar el nombre común como ID
      };

      await CountryFirestoreService.deleteCountryData(countryData);

      emit(state.copyWith(name: '', id: ''));
    } else {
      print('No hay datos de país para eliminar en Firestore');
    }
  }

  Future<void> getCountryByFirebase(String name) async {
    final response = await CountryFirestoreService().getCountryData(name);
    print(response);
    if (response != null) {
      emit(state.copyWith(name: response['name'], id: response['id']));
    } else {
      print('No se encontró el país en Firestore');
    }
  }
}
