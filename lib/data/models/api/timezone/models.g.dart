// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimeZoneListResponse _$TimeZoneListResponseFromJson(
        Map<String, dynamic> json) =>
    TimeZoneListResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => TimeZoneData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TimeZoneListResponseToJson(
        TimeZoneListResponse instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
    };
