import 'package:json_annotation/json_annotation.dart';

import 'modell.dart';
part 'Marke.g.dart';

@JsonSerializable(explicitToJson: true)
class Marke {
  final String title;
  final String image;
  final List<Modell> modelle;

  Marke(this.title, this.image, this.modelle);

  factory Marke.fromJson(Map<String, dynamic> json) => _$ModellFromJson(json);
  Map<String, dynamic> toJson() => _$ModellToJson(this);
}
