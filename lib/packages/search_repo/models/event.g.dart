// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Event _$EventFromJson(Map<String, dynamic> json) => Event(
      type: json['type'] as String?,
      id: json['id'] as int?,
      datetimeUtc: json['datetime_utc'] as String?,
      venue: json['venue'] == null ? null : Venue.fromJson(json['venue'] as Map<String, dynamic>),
      datetimeTbd: json['datetimeTbd'] as bool?,
      performers:
          (json['performers'] as List<dynamic>?)?.map((e) => Performers.fromJson(e as Map<String, dynamic>)).toList(),
      isOpen: json['isOpen'] as bool?,
      links: (json['links'] as List<dynamic>?)?.map((e) => e as String).toList(),
      datetimeLocal: json['datetimeLocal'] as String?,
      timeTbd: json['timeTbd'] as bool?,
      shortTitle: json['shortTitle'] as String?,
      visibleUntilUtc: json['visibleUntilUtc'] as String?,
      taxonomies:
          (json['taxonomies'] as List<dynamic>?)?.map((e) => Taxonomies.fromJson(e as Map<String, dynamic>)).toList(),
      url: json['url'] as String?,
      score: (json['score'] as num?)?.toDouble(),
      announceDate: json['announceDate'] as String?,
      createdAt: json['createdAt'] as String?,
      dateTbd: json['dateTbd'] as bool?,
      title: json['title'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      description: json['description'] as String?,
      status: json['status'] as String?,
      conditional: json['conditional'] as bool?,
      generalAdmission: json['generalAdmission'] as bool?,
    );

Map<String, dynamic> _$EventToJson(Event instance) => <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'datetimeUtc': instance.datetimeUtc,
      'venue': instance.venue?.toJson(),
      'datetimeTbd': instance.datetimeTbd,
      'performers': instance.performers?.map((e) => e.toJson()).toList(),
      'isOpen': instance.isOpen,
      'links': instance.links,
      'datetimeLocal': instance.datetimeLocal,
      'timeTbd': instance.timeTbd,
      'shortTitle': instance.shortTitle,
      'visibleUntilUtc': instance.visibleUntilUtc,
      'taxonomies': instance.taxonomies?.map((e) => e.toJson()).toList(),
      'url': instance.url,
      'score': instance.score,
      'announceDate': instance.announceDate,
      'createdAt': instance.createdAt,
      'dateTbd': instance.dateTbd,
      'title': instance.title,
      'popularity': instance.popularity,
      'description': instance.description,
      'status': instance.status,
      'conditional': instance.conditional,
      'generalAdmission': instance.generalAdmission,
    };
