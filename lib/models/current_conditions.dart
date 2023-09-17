class CurrentConditions {
  final String? datetime;
  final int? datetimeEpoch;
  final double? temp;
  final double? feelslike;
  final double? humidity;
  final double? dew;
  final double? precip;
  final double? precipprob;
  final double? snow;
  final double? snowdepth;
  final double? preciptype;
  final double? windgust;
  final double? windspeed;
  final double? winddir;
  final double? pressure;
  final double? visibility;
  final double? cloudcover;
  final double? solarradiation;
  final double? solarenergy;
  final double? uvindex;
  final String? conditions;
  final String? icon;
  final String? source;
  final String? sunrise;
  final int? sunriseEpoch;
  final String? sunset;
  final int? sunsetEpoch;
  final double? moonphase;

  CurrentConditions(
      {required this.datetime,
      required this.datetimeEpoch,
      required this.temp,
      required this.feelslike,
      required this.humidity,
      required this.dew,
      required this.precip,
      required this.precipprob,
      required this.snow,
      required this.snowdepth,
      required this.preciptype,
      required this.windgust,
      required this.windspeed,
      required this.winddir,
      required this.pressure,
      required this.visibility,
      required this.cloudcover,
      required this.solarradiation,
      required this.solarenergy,
      required this.uvindex,
      required this.conditions,
      required this.icon,
      required this.source,
      required this.sunrise,
      required this.sunriseEpoch,
      required this.sunset,
      required this.sunsetEpoch,
      required this.moonphase});

  factory CurrentConditions.fromJson(Map<String, Object?> json) {
    if (json
        case {
          "datetime": String datetime,
          "datetimeEpoch": String datetimeEpoch,
          "temp": String temp,
          "feelslike": String feelslike,
          "humidity": String humidity,
          "dew": String dew,
          "precip": String precip,
          "precipprob": String precipprob,
          "snow": String snow,
          "snowdepth": String snowdepth,
          "preciptype": String preciptype,
          "windgust": String windgust,
          "windspeed": String windspeed,
          "winddir": String winddir,
          "pressure": String pressure,
          "visibility": String visibility,
          "cloudcover": String cloudcover,
          "solarradiation": String solarradiation,
          "solarenergy": String solarenergy,
          "uvindex": String uvindex,
          "conditions": String conditions,
          "icon": String icon,
          "source": String source,
          "sunrise": String sunrise,
          "sunriseEpoch": String sunriseEpoch,
          "sunset": String sunset,
          "sunsetEpoch": String sunsetEpoch,
          "moonphase": String moonphase,
        })
    return CurrentConditions(
        datetime: datetime,
        datetimeEpoch: datetimeEpoch,
        temp: temp,
        feelslike: feelslike,
        humidity: humidity,
        dew: dew,
        precip: precip,
        precipprob: precipprob,
        snow: snow,
        snowdepth: snowdepth,
        preciptype: preciptype,
        windgust: windgust,
        windspeed: windspeed,
        winddir: winddir,
        pressure: pressure,
        visibility: visibility,
        cloudcover: cloudcover,
        solarradiation: solarradiation,
        solarenergy: solarenergy,
        uvindex: uvindex,
        conditions: conditions,
        icon: icon,
        source: source,
        sunrise: sunrise,
        sunriseEpoch: sunriseEpoch,
        sunset: sunset,
        sunsetEpoch: sunsetEpoch,
        moonphase: moonphase);
  }else {
    throw Error.throwWithStackTrace(Exception("Invalid"), )
  }
}
