part of 'models.dart';

class AreaListItemModel {
  final String id;
  final AreaType type;
  final String name;
  final String dataPath;

  AreaListItemModel({
    required this.id,
    required this.type,
    required this.name,
    required this.dataPath,
  });
}