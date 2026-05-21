class CountryState {
  final int counter;

  CountryState({required this.counter});

  factory CountryState.initial() {
    return CountryState(counter: 0);
  }

  CountryState copyWith({int? counter}) {
    return CountryState(counter: counter ?? this.counter);
  }
}
