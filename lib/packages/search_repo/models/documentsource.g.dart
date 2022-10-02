// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'documentsource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DocumentSource _$DocumentSourceFromJson(Map<String, dynamic> json) =>
    DocumentSource(
      generationType: json['generationType'] as String?,
      sourceType: json['sourceType'] as String?,
    );

Map<String, dynamic> _$DocumentSourceToJson(DocumentSource instance) =>
    <String, dynamic>{
      'sourceType': instance.sourceType,
      'generationType': instance.generationType,
    };
