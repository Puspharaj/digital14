// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taxonamies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Taxonomies _$TaxonomiesFromJson(Map<String, dynamic> json) => Taxonomies(
      id: json['id'] as int?,
      name: json['name'] as String?,
      parentId: json['parentId'] as int?,
      documentSource: json['documentSource'] == null
          ? null
          : DocumentSource.fromJson(
              json['documentSource'] as Map<String, dynamic>),
      rank: json['rank'] as int?,
    );

Map<String, dynamic> _$TaxonomiesToJson(Taxonomies instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'parentId': instance.parentId,
      'documentSource': instance.documentSource,
      'rank': instance.rank,
    };
