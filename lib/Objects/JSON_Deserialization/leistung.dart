import 'package:json_annotation/json_annotation.dart';

import 'schwachstellen.dart';

part 'leistung.g.dart';

@JsonSerializable(explicitToJson: true)
class Leistung {
  final String? title;
  final List<Schwachstellen>? unterschiede;

  Leistung(this.title, this.unterschiede);

  factory Leistung.fromJson(Map<String, dynamic> json) =>
      _$LeistungDataFromJson(json);
  Map<String, dynamic> toJson() => _$LeistungDataToJson(this);
}
