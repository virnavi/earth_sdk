// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrencyListResponse _$CurrencyListResponseFromJson(
        Map<String, dynamic> json) =>
    CurrencyListResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => CurrencyData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CurrencyListResponseToJson(
        CurrencyListResponse instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
    };
