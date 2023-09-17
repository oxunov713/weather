class WeatherModel {
  final int? queryCost;
  final double? latitude;
  final double? longitude;
  final String? resolvedaddress;
  final String? address;
  final String? timezone;
  final double? tzoffset;
  final String? description;
  final List<Days> days;
  final List<Object?> alerts;
  final CurrentConditions currentConditions;

  WeatherModel({
    required this.queryCost,
    required this.latitude,
    required this.longitude,
    required this.resolvedaddress,
    required this.address,
    required this.timezone,
    required this.tzoffset,
    required this.description,
    required this.days,
    required this.alerts,
    required this.currentConditions,
  });

  factory WeatherModel.fromJson(Map<String, Object?> json) {
    if (json
        case {
          "queryCost": int queryCost,
          "latitude": double latitude,
          "longitude": double longitude,
          "resolvedaddress": String resolvedaddress,
          "address": String address,
          "timezone": String timezone,
          "tzoffset": double tzoffset,
          "description": String description,
          "days": List<Days> days,
          "alerts": List<Object?> alerts,
          "currentConditions": CurrentConditions currentConditions,
        }) {
      return WeatherModel(
        queryCost: queryCost,
        latitude: latitude,
        longitude: longitude,
        resolvedaddress: resolvedaddress,
        address: address,
        timezone: timezone,
        tzoffset: tzoffset,
        description: description,
        days: days,
        alerts: alerts,
        currentConditions: currentConditions,
      );
    } else {
      throw Error.throwWithStackTrace(
        const FormatException("Invalid Json data come from Network"),
        StackTrace.current,
       );
    }
  }
}
