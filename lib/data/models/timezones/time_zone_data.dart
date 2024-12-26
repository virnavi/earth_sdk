part of 'models.dart';

@JsonSerializable(explicitToJson: true)
class TimeZoneData {
  @JsonKey()
  final String id;
  @JsonKey()
  final String name;
  @JsonKey()
  final String gmtOffsetName;
  @JsonKey()
  final int gmtOffset;
  @JsonKey()
  final String abbreviation;

  TimeZoneData({
    required this.id,
    required this.name,
    required this.gmtOffsetName,
    required this.gmtOffset,
    required this.abbreviation,
  });

  TimeZoneModel toModel() {
    return TimeZoneModel(
      id: id,
      name: name,
      gmt: GmtModel(name: gmtOffsetName, offset: gmtOffset,),
      abbreviation: abbreviation,
    );
  }

  factory TimeZoneData.fromJson(Map<String, dynamic> json) =>
      _$TimeZoneDataFromJson(json);

  Map<String, dynamic> toJson() => _$TimeZoneDataToJson(this);
}
