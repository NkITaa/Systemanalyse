// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schwachstellen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Schwachstellen _$UnterscheidungsDataFromJson(Map<String, dynamic> json) {
  return Schwachstellen(
    json['difference'] as String?,
    json['title'] as String?,
    json['wholeText'] as String?,
  );
}

Map<String, dynamic> _$UnterscheidungsDataToJson(Schwachstellen instance) =>
    <String, dynamic>{
      'difference': instance.difference,
      'title': instance.title,
      'wholeText': instance.wholeText,
    };
