import 'package:xml/xml.dart' as xml;
import 'package:arquitectura_patrones/patrones/adapter/adapter.dart';

class XmlContactsAdapter implements IContactsAdapter {
  final XmlContactsApi _api = XmlContactsApi();
  @override
  List<Contact> getContacts() {
    String contactsXml = _api.getContactsJson();
    List<Contact> contactsList = _parseContactsXml(contactsXml);
    return contactsList;
  }

  List<Contact> _parseContactsXml(String contactsXml) {
    var xmlDocument = xml.XmlDocument.parse(contactsXml);
    var contactsList = <Contact>[];
    for (var xmlElement in xmlDocument.findAllElements('contact')) {
      var fullName = xmlElement.findElements('fullName').single.text;
      var email = xmlElement.findElements('email').single.text;
      var favouriteString = xmlElement.findElements('favourite').single.text;
      var favourite = favouriteString.toLowerCase() == 'true';
      var image = xmlElement.findElements('image').single.text;

      contactsList.add(Contact(
        fullName,
        email,
        favourite,
        image,
      ));
    }

    return contactsList;
  }
}
