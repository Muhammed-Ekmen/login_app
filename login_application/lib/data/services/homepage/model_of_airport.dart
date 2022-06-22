class ModelOfAirline {
  int? id;
  String? name;
  int? trips;
  int? airline_id;
  String? airline_name;
  String? airline_country;
  String? airline_logo;
  String? airline_slogan;
  String? airline_head_quaters;
  String? website;
  String? airline_established;
  ModelOfAirline(
      {required this.id,
      required this.name,
      required this.trips,
      required this.airline_id,
      required this.airline_name,
      required this.airline_country,
      required this.airline_logo,
      required this.airline_slogan,
      required this.airline_head_quaters,
      required this.website,
      required this.airline_established});

  ModelOfAirline.fromJson(Map<String, dynamic> json) {
    id = json["data"][0]["_id"];
    name = json["data"][0]["name"];
    trips = json["data"][0]["trips"];
    airline_id = json["data"][0]["airline"][0]["id"];
    airline_name = json["data"][0]["airline"][0]["name"];
    airline_country = json["data"][0]["airline"][0]["country"];
    airline_logo = json["data"][0]["airline"][0]["logo"];
    airline_slogan = json["data"][0]["airline"][0]["slogan"];
    airline_head_quaters = json["data"][0]["airline"][0]["head_quaters"];
    website = json["data"][0]["airline"][0]["website"];
    airline_established = json["data"][0]["airline"][0]["established"];
  }
}
