// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimeZoneData _$TimeZoneDataFromJson(Map<String, dynamic> json) => TimeZoneData(
      id: json['id'] as String,
      name: json['name'] as String,
      gmtOffsetName: json['gmtOffsetName'] as String,
      gmtOffset: (json['gmtOffset'] as num).toInt(),
      abbreviation: json['abbreviation'] as String,
    );

Map<String, dynamic> _$TimeZoneDataToJson(TimeZoneData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'gmtOffsetName': instance.gmtOffsetName,
      'gmtOffset': instance.gmtOffset,
      'abbreviation': instance.abbreviation,
    };
