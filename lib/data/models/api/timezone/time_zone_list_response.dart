part of 'models.dart';

@JsonSerializable(explicitToJson: true)
class TimeZoneListResponse {
  @JsonKey()
  final List<TimeZoneData> data;

  TimeZoneListResponse({required this.data});

  List<TimeZoneModel> toList() {
    return data.map((data) => data.toModel()).toList();
  }


  factory TimeZoneListResponse.fromJson(Map<String, dynamic> json) =>
      _$TimeZoneListResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TimeZoneListResponseToJson(this);
}
