import 'package:json_annotation/json_annotation.dart';

import 'leistung.dart';

part 'treibstoff.g.dart';

@JsonSerializable(explicitToJson: true)
class Treibstoff {
  final String? title;
  final List<Leistung>? leistungen;

  Treibstoff(this.title, this.leistungen);

  factory Treibstoff.fromJson(Map<String, dynamic> json) =>
      _$TreibstoffDataFromJson(json);
  Map<String, dynamic> toJson() => _$TreibstoffDataToJson(this);
}
