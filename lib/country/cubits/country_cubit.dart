import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jcyl_app_flutter/country/cubits/country_state.dart';

class CountryCubit extends Cubit<CountryState> {
  CountryCubit() : super(CountryState.initial());

  void increment() {
    state.copyWith(counter: state.counter + 1);
  }
}
