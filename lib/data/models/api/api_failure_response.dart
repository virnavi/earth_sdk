part of 'models.dart';

@JsonSerializable(explicitToJson: true)
class ApiFailureResponse {
  @JsonKey(defaultValue: 'errorGeneric')
  final String code;
  @JsonKey(defaultValue: 'Oops!. An error occurred.')
  final String message;
  @JsonKey(defaultValue: [])
  final List<String> params;

  ApiFailureResponse({
    required this.code,
    required this.message,
    required this.params,
  });

  factory ApiFailureResponse.empty() => ApiFailureResponse(
        code: 'errorGeneric',
        message: 'Oops!. An error occurred.',
        params: [],
      );

  factory ApiFailureResponse.fromException(Exception e) => ApiFailureResponse(
        code: "errorException",
        message: e.toString(),
        params: [],
      );

  factory ApiFailureResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiFailureResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiFailureResponseToJson(this);
}
