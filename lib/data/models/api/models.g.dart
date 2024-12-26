// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiFailureResponse _$ApiFailureResponseFromJson(Map<String, dynamic> json) =>
    ApiFailureResponse(
      code: json['code'] as String? ?? 'errorGeneric',
      message: json['message'] as String? ?? 'Oops!. An error occurred.',
      params: (json['params'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$ApiFailureResponseToJson(ApiFailureResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'params': instance.params,
    };

EmptyDataModel _$EmptyDataModelFromJson(Map<String, dynamic> json) =>
    EmptyDataModel();

Map<String, dynamic> _$EmptyDataModelToJson(EmptyDataModel instance) =>
    <String, dynamic>{};
