import 'package:arquitectura_patrones/patrones/adapter/adapter.dart';
import 'package:arquitectura_patrones/widgets/widgets.dart';
import 'package:flutter/material.dart';

class AdapterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCustom(
        title: 'Adapter',
        icon: Icons.arrow_back_ios_new,
      ),
      body: ScrollConfiguration(
        behavior: const ScrollBehavior(),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              const SizedBox(height: 30),
              ContactsSection(
                adapter: JsonContactsAdapter(),
                headerText: 'Contactos desde la API JSON',
              ),
              const SizedBox(height: 30.0),
              ContactsSection(
                adapter: XmlContactsAdapter(),
                headerText: 'Contactos desde la API XML',
              ),
              const SizedBox(height: 80.0),
            ],
          ),
        ),
      ),
    );
  }
}
