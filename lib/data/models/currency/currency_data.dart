part of 'models.dart';

@JsonSerializable(explicitToJson: true)
class CurrencyData {
  @JsonKey(defaultValue: '')
  final String id;
  @JsonKey(defaultValue: '')
  final String name;
  @JsonKey(defaultValue: '')
  final String symbol;
  @JsonKey(defaultValue: 0)
  final int decimalPoints;

  CurrencyData({
    required this.id,
    required this.name,
    required this.symbol,
    required this.decimalPoints,
  });

  CurrencyModel toModel() {
    return CurrencyModel(
      id: id,
      name: name,
      symbol:symbol,
      decimalPoints: decimalPoints,
    );
  }

  factory CurrencyData.fromJson(Map<String, dynamic> json) =>
      _$CurrencyDataFromJson(json);

  Map<String, dynamic> toJson() => _$CurrencyDataToJson(this);
}
