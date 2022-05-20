// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modell.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Modell _$ModelDataFromJson(Map<String, dynamic> json) {
  return Modell(
    json['title'] as String,
    (json['variantenData'] as List<dynamic>?)
        ?.map((e) => Generation.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ModelDataToJson(Modell instance) => <String, dynamic>{
      'title': instance.title,
      'variantenData': instance.generationen?.map((e) => e.toJson()).toList(),
    };
