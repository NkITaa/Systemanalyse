import 'package:json_annotation/json_annotation.dart';

part 'schwachstellen.g.dart';

@JsonSerializable()
class Schwachstellen {
  final String? difference;
  final String? title;
  final String? wholeText;

  Schwachstellen(this.difference, this.title, this.wholeText);

  factory Schwachstellen.fromJson(Map<String, dynamic> json) =>
      _$UnterscheidungsDataFromJson(json);
  Map<String, dynamic> toJson() => _$UnterscheidungsDataToJson(this);
}
