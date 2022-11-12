import 'package:arquitectura_patrones/patrones/adapter/adapter.dart';
import 'package:flutter/material.dart';

class CardContact extends StatelessWidget {
  final Contact contact;
  const CardContact({Key? key, required this.contact}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        margin: const EdgeInsets.only(top: 90, bottom: 0),
        width: double.infinity,
        height: 500.0,
        decoration: _cardBorders(),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            _BackgrounImage(contact.image),
            _DetailsContact(contact: contact),
          ],
        ),
      ),
    );
  }

  BoxDecoration _cardBorders() => BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.black38,
              offset: Offset(0, 7),
              blurRadius: 10,
            )
          ]);
}

class _DetailsContact extends StatelessWidget {
  final Contact contact;
  const _DetailsContact({
    required this.contact,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
        width: double.infinity,
        height: 110.0,
        decoration: _bordersDetails(),
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(contact.image),
                radius: 30.0,
              ),
              title: Text(
                contact.fullName,
                maxLines: 2,
              ),
              subtitle: Text(
                contact.email,
                maxLines: 2,
              ),
              trailing: contact.favourite
                  ? const Icon(Icons.favorite, color: Colors.red)
                  : const Icon(Icons.favorite, color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }

  BoxDecoration _bordersDetails() => const BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25.0),
          bottomRight: Radius.circular(25.0),
        ),
      );
}

class _BackgrounImage extends StatelessWidget {
  final String? url;
  const _BackgrounImage(this.url);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Container(
        width: double.infinity,
        height: 500.0,
        color: Colors.indigo,
        child: url == null
            ? const Image(
                image: AssetImage('assets/no-image.png'),
                fit: BoxFit.cover,
              )
            : FadeInImage(
                placeholder: const AssetImage('assets/jar-loading.gif'),
                image: NetworkImage(url!),
                fit: BoxFit.cover,
              ),
      ),
    );
  }
}
