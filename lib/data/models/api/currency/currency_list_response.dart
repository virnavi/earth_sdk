part of 'models.dart';

@JsonSerializable(explicitToJson: true)
class CurrencyListResponse {
  @JsonKey()
  final List<CurrencyData> data;

  CurrencyListResponse({required this.data});

  List<CurrencyModel> toList() {
    return data.map((data) => data.toModel()).toList();
  }


  factory CurrencyListResponse.fromJson(Map<String, dynamic> json) =>
      _$CurrencyListResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CurrencyListResponseToJson(this);
}
