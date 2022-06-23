class ModelOfAirline {
  int? id;
  String? name;
  int? trips;
  int? airlineId;
  String? airlineName;
  String? airlineCountry;
  String? airlineLogo;
  String? airlineSlogan;
  String? airlineHeadQuaters;
  String? website;
  String? airlineEstablished;
  ModelOfAirline(
      {required this.id,
      required this.name,
      required this.trips,
      required this.airlineId,
      required this.airlineName,
      required this.airlineCountry,
      required this.airlineLogo,
      required this.airlineSlogan,
      required this.airlineHeadQuaters,
      required this.website,
      required this.airlineEstablished});

  ModelOfAirline.fromJson(Map<String, dynamic> json) {
    id = json["data"][0]["_id"];
    name = json["data"][0]["name"];
    trips = json["data"][0]["trips"];
    airlineId = json["data"][0]["airline"][0]["id"];
    airlineName = json["data"][0]["airline"][0]["name"];
    airlineCountry = json["data"][0]["airline"][0]["country"];
    airlineCountry = json["data"][0]["airline"][0]["logo"];
    airlineSlogan = json["data"][0]["airline"][0]["slogan"];
    airlineHeadQuaters = json["data"][0]["airline"][0]["head_quaters"];
    website = json["data"][0]["airline"][0]["website"];
    airlineEstablished = json["data"][0]["airline"][0]["established"];
  }
}
