part of 'models.dart';

class CurrencyModel {
  final String id;
  final String name;
  final String symbol;
  final int decimalPoints;

  CurrencyModel({
    required this.id,
    required this.name,
    required this.symbol,
    required this.decimalPoints,
  });
}