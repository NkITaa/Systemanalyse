// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Generation _$VariantenDataFromJson(Map<String, dynamic> json) {
  return Generation(
    json['bigtitle'] as String?,
    json['title'] as String?,
    json['image'] as String?,
    (json['treibstoffData'] as List<dynamic>?)
        ?.map((e) => Treibstoff.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$VariantenDataToJson(Generation instance) =>
    <String, dynamic>{
      'bigtitle': instance.bigtitle,
      'title': instance.title,
      'image': instance.image,
      'treibstoffData': instance.treibstoffe?.map((e) => e.toJson()).toList(),
    };
