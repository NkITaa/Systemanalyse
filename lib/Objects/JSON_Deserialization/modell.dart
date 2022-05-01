import 'package:json_annotation/json_annotation.dart';

import 'generation.dart';

part 'modell.g.dart';

@JsonSerializable(explicitToJson: true)
class Modell {
  final String title;
  final List<Generation>? generationen;

  Modell(this.title, this.generationen);

  factory Modell.fromJson(Map<String, dynamic> json) =>
      _$ModelDataFromJson(json);
  Map<String, dynamic> toJson() => _$ModelDataToJson(this);
}
