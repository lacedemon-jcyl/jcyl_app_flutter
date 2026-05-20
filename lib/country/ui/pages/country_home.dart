import 'package:flutter/material.dart';

class CountryHome extends StatelessWidget {
  const CountryHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

      body: Center(child: Text('Hello World!')),
    );
  }
}
