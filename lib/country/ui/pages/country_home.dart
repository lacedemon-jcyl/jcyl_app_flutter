import 'package:flutter/material.dart';

int counter = 0;

class CountryHome extends StatefulWidget {
  const CountryHome({super.key});

  @override
  State<CountryHome> createState() => _CountryHomeState();
}

class _CountryHomeState extends State<CountryHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter++;
          print(counter);
          setState(() {});
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

      body: Center(child: Text('$counter', style: TextStyle(fontSize: 48))),
    );
  }
}
