part of 'models.dart';

@JsonSerializable(explicitToJson: true)
class EmptyDataModel extends BaseJson {
  EmptyDataModel();

  factory EmptyDataModel.fromJson(Map<String, dynamic> json) =>
      EmptyDataModel();

  Map<String, dynamic> toJson() => {};
}
