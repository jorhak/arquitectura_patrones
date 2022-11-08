import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bienvenido Patrones'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: ListView(
          children: [],
        ),
      ),
    );
  }
}
