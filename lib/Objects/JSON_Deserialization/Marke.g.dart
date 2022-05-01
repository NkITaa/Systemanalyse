// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Marke.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Marke _$ModellFromJson(Map<String, dynamic> json) {
  return Marke(
    json['title'] as String,
    json['image'] as String,
    (json['modelData'] as List<dynamic>)
        .map((e) => Modell.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ModellToJson(Marke instance) => <String, dynamic>{
      'title': instance.title,
      'image': instance.image,
      'modelData': instance.modelle.map((e) => e.toJson()).toList(),
    };
