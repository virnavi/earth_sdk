part of 'models.dart';

class CountryModel extends AreaModel {
  //iso3166-1Alpha2
  final String iso31661Alpha2;
  //iso3166-1Alpha3
  final String iso31661Alpha3;
  final CountryCapitalModel capital;


  CountryModel({
    required super.id,
    required super.type,
    required super.name,
    required super.address,
    required this.iso31661Alpha2,
    required this.iso31661Alpha3,
    required this.capital,
  });
}