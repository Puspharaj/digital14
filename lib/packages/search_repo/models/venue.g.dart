// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'venue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Venue _$VenueFromJson(Map<String, dynamic> json) => Venue(
      state: json['state'] as String?,
      nameV2: json['nameV2'] as String?,
      postalCode: json['postalCode'] as String?,
      name: json['name'] as String?,
      links:
          (json['links'] as List<dynamic>?)?.map((e) => e as String).toList(),
      timezone: json['timezone'] as String?,
      url: json['url'] as String?,
      score: (json['score'] as num?)?.toDouble(),
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      address: json['address'] as String?,
      country: json['country'] as String?,
      hasUpcomingEvents: json['hasUpcomingEvents'] as bool?,
      numUpcomingEvents: json['numUpcomingEvents'] as int?,
      city: json['city'] as String?,
      slug: json['slug'] as String?,
      extendedAddress: json['extendedAddress'] as String?,
      id: json['id'] as int?,
      popularity: json['popularity'] as int?,
      metroCode: json['metroCode'] as int?,
      capacity: json['capacity'] as int?,
      displayLocation: json['display_location'] as String?,
    );

Map<String, dynamic> _$VenueToJson(Venue instance) => <String, dynamic>{
      'state': instance.state,
      'nameV2': instance.nameV2,
      'postalCode': instance.postalCode,
      'name': instance.name,
      'links': instance.links,
      'timezone': instance.timezone,
      'url': instance.url,
      'score': instance.score,
      'location': instance.location,
      'address': instance.address,
      'country': instance.country,
      'hasUpcomingEvents': instance.hasUpcomingEvents,
      'numUpcomingEvents': instance.numUpcomingEvents,
      'city': instance.city,
      'slug': instance.slug,
      'extendedAddress': instance.extendedAddress,
      'id': instance.id,
      'popularity': instance.popularity,
      'metroCode': instance.metroCode,
      'capacity': instance.capacity,
      'display_location': instance.displayLocation,
    };
