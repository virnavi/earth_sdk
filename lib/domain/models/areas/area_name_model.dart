part of 'models.dart';

class AreaNameModel {
  final String fallback;
  final Map<String,String> translations;

  AreaNameModel({
    required this.fallback,
    required this.translations
  });

  String getName(String locale){
    return translations[locale] ?? fallback;
  }

}