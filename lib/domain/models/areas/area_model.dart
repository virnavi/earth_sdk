part of 'models.dart';

class AreaModel {
  final String id;
  final AreaType type;
  final AreaNameModel name;
  final String address;

  AreaModel({
    required this.id,
    required this.type,
    required this.name,
    required this.address,
  });
}