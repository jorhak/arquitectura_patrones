import 'package:arquitectura_patrones/patrones/adapter/adapter.dart';
import 'package:arquitectura_patrones/widgets/adapter/card_contact.dart';
import 'package:arquitectura_patrones/widgets/adapter/platform_button.dart';
import 'package:flutter/material.dart';

class ContactsSection extends StatefulWidget {
  final IContactsAdapter adapter;
  final String headerText;

  const ContactsSection(
      {Key? key, required this.adapter, required this.headerText})
      : super(key: key);

  @override
  State<ContactsSection> createState() => _ContactsSectionState();
}

class _ContactsSectionState extends State<ContactsSection> {
  final List<Contact> contacts = <Contact>[];
  void _getContacts() {
    setState(() {
      contacts.addAll(widget.adapter.getContacts());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.headerText,
          style: const TextStyle(
              fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20.0),
        Stack(
          children: [
            AnimatedOpacity(
              opacity: contacts.isNotEmpty ? 1.0 : 0.5,
              duration: const Duration(milliseconds: 500),
              child: Column(
                children: [
                  for (var contact in contacts)
                    CardContact(
                      contact: contact,
                    ),
                ],
              ),
            ),
            AnimatedOpacity(
              opacity: contacts.isNotEmpty ? 1.0 : 0.5,
              duration: const Duration(milliseconds: 250),
              child: PlatformButton(
                text: 'Get Contacts',
                materialColor: Colors.black,
                materialTextColor: Colors.white,
                onPressed: _getContacts,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
