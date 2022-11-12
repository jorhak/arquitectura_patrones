class JsonContactsApi {
  final String _contactJson = ''' 
  {
    "contacts": [
      {
        "fullName": "Carmelo Suarez JSON",
        "email": "carmeloSuares@json.com",
        "favourite": true,
        "image":"https://modelaje.com/images/models/A/AidaCortes/AidaCortes%20(1).jpg"
      },
      {
        "fullName": "Raul Altamirano JSON",
        "email": "raulAltamirano@json.com",
        "favourite": false,
        "image":"https://modelaje.com/images/models/A/AidaCortes/AidaCortes%20(10).jpg"
      },
      {
        "fullName": "Melisa Quiñones JSON",
        "email": "melisaQuiñones@json.com",
        "favourite": false,
        "image":"https://modelaje.com/images/models/A/AidaCortes/AidaCortes%20(101).jpg"
      },
      {
        "fullName": "Jessenia Quinteros JSON",
        "email": "jesseniaQuinteros@json.com",
        "favourite": true,
        "image":"https://modelaje.com/images/models/A/AidaCortes/AidaCortes%20(102).jpg"
      }
    ]
  }
  ''';

  String getContactsJson() {
    return _contactJson;
  }
}
