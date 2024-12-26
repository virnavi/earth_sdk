// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrencyData _$CurrencyDataFromJson(Map<String, dynamic> json) => CurrencyData(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      symbol: json['symbol'] as String? ?? '',
      decimalPoints: (json['decimalPoints'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$CurrencyDataToJson(CurrencyData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'symbol': instance.symbol,
      'decimalPoints': instance.decimalPoints,
    };
