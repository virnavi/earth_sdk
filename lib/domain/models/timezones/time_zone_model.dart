part of 'models.dart';

class TimeZoneModel {
  final String id;
  final String name;
  final GmtModel gmt;
  final String abbreviation;

  TimeZoneModel({
    required this.id,
    required this.name,
    required this.gmt,
    required this.abbreviation,
  });
}
