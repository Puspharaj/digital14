// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'performer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Performers _$PerformersFromJson(Map<String, dynamic> json) => Performers(
      type: json['type'] as String?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      id: json['id'] as int?,
      hasUpcomingEvents: json['hasUpcomingEvents'] as bool?,
      primary: json['primary'] as bool?,
      taxonomies: (json['taxonomies'] as List<dynamic>?)
          ?.map((e) => Taxonomies.fromJson(e as Map<String, dynamic>))
          .toList(),
      imageAttribution: json['imageAttribution'] as String?,
      url: json['url'] as String?,
      score: (json['score'] as num?)?.toDouble(),
      slug: json['slug'] as String?,
      shortName: json['shortName'] as String?,
      numUpcomingEvents: json['numUpcomingEvents'] as int?,
      imageLicense: json['imageLicense'] as String?,
      popularity: json['popularity'] as int?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      imageRightsMessage: json['imageRightsMessage'] as String?,
    );

Map<String, dynamic> _$PerformersToJson(Performers instance) =>
    <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      'image': instance.image,
      'id': instance.id,
      'hasUpcomingEvents': instance.hasUpcomingEvents,
      'primary': instance.primary,
      'taxonomies': instance.taxonomies,
      'imageAttribution': instance.imageAttribution,
      'url': instance.url,
      'score': instance.score,
      'slug': instance.slug,
      'shortName': instance.shortName,
      'numUpcomingEvents': instance.numUpcomingEvents,
      'imageLicense': instance.imageLicense,
      'popularity': instance.popularity,
      'location': instance.location,
      'imageRightsMessage': instance.imageRightsMessage,
    };
