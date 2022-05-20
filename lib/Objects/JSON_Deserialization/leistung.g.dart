// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leistung.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Leistung _$LeistungDataFromJson(Map<String, dynamic> json) {
  return Leistung(
    json['title'] as String?,
    (json['unterscheidungsData'] as List<dynamic>?)
        ?.map((e) => Schwachstellen.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$LeistungDataToJson(Leistung instance) =>
    <String, dynamic>{
      'title': instance.title,
      'unterscheidungsData':
          instance.unterschiede?.map((e) => e.toJson()).toList(),
    };
