import 'package:flutter/material.dart';
import 'package:arquitectura_patrones/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Patrones de Arqui',
      initialRoute: 'home',
      routes: {
        'home': (_) => HomeScreen(),
        'estrategia': (_) => EstrategiaScreen(),
        'plantilla': (_) => PlantillaScreen(),
        'memento': (_) => MementoScreen(),
        'composite': (_) => CompositeScreen(),
        'adapter': (_) => AdapterScreen(),
      },
    );
  }
}
