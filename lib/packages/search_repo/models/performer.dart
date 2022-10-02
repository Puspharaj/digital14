import 'package:digital_14_puspharaj/packages/search_repo/models/location.dart';
import 'package:digital_14_puspharaj/packages/search_repo/models/taxonamies.dart';
import 'package:json_annotation/json_annotation.dart';

part 'performer.g.dart';

@JsonSerializable()
class Performers {
  String? type;
  String? name;
  String? image;
  int? id;
  bool? hasUpcomingEvents;
  bool? primary;
  List<Taxonomies>? taxonomies;
  String? imageAttribution;
  String? url;
  double? score;
  String? slug;
  String? shortName;
  int? numUpcomingEvents;
  String? imageLicense;
  int? popularity;
  Location? location;
  String? imageRightsMessage;

  Performers({
    this.type,
    this.name,
    this.image,
    this.id,
    this.hasUpcomingEvents,
    this.primary,
    this.taxonomies,
    this.imageAttribution,
    this.url,
    this.score,
    this.slug,
    this.shortName,
    this.numUpcomingEvents,
    this.imageLicense,
    this.popularity,
    this.location,
    this.imageRightsMessage,
  });

  factory Performers.fromJson(Map<String, dynamic> json) => _$PerformersFromJson(json);
  Map<String, dynamic> toJson() => _$PerformersToJson(this);
}
