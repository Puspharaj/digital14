// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listevent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListEvent _$ListEventFromJson(Map<String, dynamic> json) => ListEvent(
      events: (json['events'] as List<dynamic>?)
          ?.map((e) => Event.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListEventToJson(ListEvent instance) => <String, dynamic>{
      'events': instance.events,
    };
