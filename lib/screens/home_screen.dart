import 'package:arquitectura_patrones/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bienvenido Patrones'),
        centerTitle: true,
      ),
      body: ListView(
        children: const [
          CardPatrones(
            title: 'Composite',
            subTitle: 'Tipo Arbol',
            image: 'composite.png',
            descripcion:
                'Es como un arbol y suma sus valores dando un resultado',
            ruta: 'composite',
          ),
          CardPatrones(
            title: 'Estrategia',
            subTitle: 'Toma una o mas opciones',
            image: 'estrategia.png',
            descripcion: 'Decide cual utilizar en tiempo de ejecucion',
            ruta: 'estrategia',
          ),
          CardPatrones(
            title: 'Plantilla',
            subTitle: 'Una accion cambia su comportamiento',
            image: 'plantilla.png',
            descripcion:
                'Tiene el mismo codigo y un metodo es lo que lo diferencia',
            ruta: 'plantilla',
          ),
          CardPatrones(
            title: 'Memento',
            subTitle: 'Atras y Adelante',
            image: 'memento.png',
            descripcion:
                'Nos permite volver a obener nuestro valor anterior y de se necesario el siguiente',
            ruta: 'memento',
          ),
          CardPatrones(
            title: 'Adapter',
            subTitle: 'Adapta el formato',
            image: 'adapter.png',
            descripcion:
                'Nos permite adpatar dos o mas leguajes para poder mostrarlo',
            ruta: 'adapter',
          ),
        ],
      ),
    );
  }
}
