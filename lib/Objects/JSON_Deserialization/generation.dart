import 'package:json_annotation/json_annotation.dart';

import 'treibstoff.dart';

part 'generation.g.dart';

@JsonSerializable(explicitToJson: true)
class Generation {
  final String? bigtitle;
  final String? title;
  final String? image;
  final List<Treibstoff>? treibstoffe;

  Generation(this.bigtitle, this.title, this.image, this.treibstoffe);

  factory Generation.fromJson(Map<String, dynamic> json) =>
      _$VariantenDataFromJson(json);
  Map<String, dynamic> toJson() => _$VariantenDataToJson(this);
}
