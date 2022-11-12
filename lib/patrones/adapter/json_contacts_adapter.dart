import 'dart:convert';

import 'package:arquitectura_patrones/patrones/adapter/adapter.dart';

class JsonContactsAdapter implements IContactsAdapter {
  final JsonContactsApi _api = JsonContactsApi();
  @override
  List<Contact> getContacts() {
    String contactsJson = _api.getContactsJson();
    List<Contact> contactList = _parseContactsJson(contactsJson);
    return contactList;
  }

  List<Contact> _parseContactsJson(String contactsJson) {
    Map<String, dynamic> contactsMap =
        json.decode(contactsJson) as Map<String, dynamic>;
    List contactsJsonList = contactsMap['contacts'] as List;
    var contactList = contactsJsonList
        .map((contact) => Contact(
              contact['fullName'],
              contact['email'],
              contact['favourite'],
              contact['image'],
            ))
        .toList();
    print(contactList);
    return contactList;
  }
}
