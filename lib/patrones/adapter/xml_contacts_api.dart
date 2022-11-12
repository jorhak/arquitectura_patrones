class XmlContactsApi {
  final String _contactXml = ''' 
  <?xml version="1.0"?>
  <contacts>
    <contact>
      <fullName>Silvana Martinez XML</fullName>
      <email>silvanaMartinez@xml.com</email>
      <favourite>true</favourite>
      <image>https://modelaje.com/images/models/A/AidaCortes/AidaCortes%20(105).jpg</image>
    </contact>
    <contact>
      <fullName>Carol Cruz XML</fullName>
      <email>carolCruz@xml.com</email>
      <favourite>false</favourite>
      <image>https://modelaje.com/images/models/A/AidaCortes/AidaCortes%20(109).jpg</image>
    </contact>
    <contact>
      <fullName>Susana Escudero XML</fullName>
      <email>susanaEscudero@xml.com</email>
      <favourite>false</favourite>
      <image>https://modelaje.com/images/models/A/AidaCortes/AidaCortes%20(24).jpg</image>
    </contact>
    <contact>
      <fullName>Carolina Lopez XML</fullName>
      <email>carolinaLopez@xml.com</email>
      <favourite>true</favourite>
      <image>https://modelaje.com/images/models/A/AidaCortes/AidaCortes%20(71).jpg</image>
    </contact>
  </contacts>
  ]
  ''';

  String getContactsJson() {
    return _contactXml;
  }
}
