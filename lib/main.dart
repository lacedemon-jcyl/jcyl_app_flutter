import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jcyl_app_flutter/country/cubits/country_cubit.dart';
import 'package:jcyl_app_flutter/country/ui/pages/country_home.dart';
import 'package:jcyl_app_flutter/firebase_options.dart';
import 'package:jcyl_app_flutter/home/pages/home_page.dart';
import 'package:jcyl_app_flutter/meetup/ui/pages/meetup_home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CountryCubit>(
      create: (context) => CountryCubit(),
      child: MaterialApp(
        home: HomePage(),
        routes: {
          '/meetup': (context) => MeetupHome(),
          '/country': (context) => CountryHome(),
        },
      ),
    );
  }
}
