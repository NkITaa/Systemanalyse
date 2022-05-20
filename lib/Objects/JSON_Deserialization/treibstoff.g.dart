// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'treibstoff.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Treibstoff _$TreibstoffDataFromJson(Map<String, dynamic> json) {
  return Treibstoff(
    json['title'] as String?,
    (json['leistungData'] as List<dynamic>?)
        ?.map((e) => Leistung.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$TreibstoffDataToJson(Treibstoff instance) =>
    <String, dynamic>{
      'title': instance.title,
      'leistungData': instance.leistungen?.map((e) => e.toJson()).toList(),
    };
