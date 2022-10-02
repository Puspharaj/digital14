import 'location.dart';
import 'package:json_annotation/json_annotation.dart';

part 'venue.g.dart';

@JsonSerializable()
class Venue {
  String? state;
  String? nameV2;
  String? postalCode;
  String? name;
  List<String>? links;
  String? timezone;
  String? url;
  double? score;
  Location? location;
  String? address;
  String? country;
  bool? hasUpcomingEvents;
  int? numUpcomingEvents;
  String? city;
  String? slug;
  String? extendedAddress;
  int? id;
  int? popularity;
  int? metroCode;
  int? capacity;
  @JsonKey(name: 'display_location')
  String? displayLocation;

  Venue(
      {this.state,
      this.nameV2,
      this.postalCode,
      this.name,
      this.links,
      this.timezone,
      this.url,
      this.score,
      this.location,
      this.address,
      this.country,
      this.hasUpcomingEvents,
      this.numUpcomingEvents,
      this.city,
      this.slug,
      this.extendedAddress,
      this.id,
      this.popularity,
      this.metroCode,
      this.capacity,
      this.displayLocation});

  factory Venue.fromJson(Map<String, dynamic> json) => _$VenueFromJson(json);
  Map<String, dynamic> toJson() => _$VenueToJson(this);
}
