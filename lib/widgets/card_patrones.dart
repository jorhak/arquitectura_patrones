import 'package:flutter/material.dart';

class CardPatrones extends StatelessWidget {
  final String title;
  final String subTitle;
  final String image;
  final String descripcion;
  final String ruta;

  const CardPatrones(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.image,
      required this.descripcion,
      required this.ruta})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.arrow_drop_down_circle),
            title: Text(title),
            subtitle: Text(
              subTitle,
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              descripcion,
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, ruta);
                },
                child: const Text('Ejemplo'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('ACTION 2'),
              ),
            ],
          ),
          Image.asset('assets/$image'),
        ],
      ),
    );
  }
}
