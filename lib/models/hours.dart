class Hours {
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
  final double? severerisk;
  final String? conditions;
  final String? icon;
  final String? source;

  Hours(
      this.datetime,
      this.datetimeEpoch,
      this.temp,
      this.feelslike,
      this.humidity,
      this.dew,
      this.precip,
      this.precipprob,
      this.snow,
      this.snowdepth,
      this.preciptype,
      this.windgust,
      this.windspeed,
      this.winddir,
      this.pressure,
      this.visibility,
      this.cloudcover,
      this.solarradiation,
      this.solarenergy,
      this.uvindex,
      this.severerisk,
      this.conditions,
      this.icon,
      this.source);
}
