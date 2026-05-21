import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jcyl_app_flutter/country/cubits/country_cubit.dart';
import 'package:jcyl_app_flutter/country/cubits/country_state.dart';

class CountryHome extends StatelessWidget {
  const CountryHome({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CountryCubit, CountryState>(
      builder: (context, state) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              context.read<CountryCubit>().increment();
              // counter++;
              // print(counter);
              // setState(() {});
            },
          ),
          appBar: AppBar(
            title: Text('Country Home'),
            automaticallyImplyLeading: false,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
            ),
          ),

          body: Center(
            child: Text('${state.counter}', style: TextStyle(fontSize: 48)),
          ),
        );
      },
    );
  }
}
