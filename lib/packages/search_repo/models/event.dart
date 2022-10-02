import 'package:digital_14_puspharaj/packages/search_repo/models/performer.dart';
import 'package:digital_14_puspharaj/packages/search_repo/models/taxonamies.dart';
import 'package:digital_14_puspharaj/packages/search_repo/models/venue.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'event.g.dart';

@JsonSerializable(explicitToJson: true)
class Event extends Equatable {
  String? type;
  int? id;
  @JsonKey(name: "datetime_utc")
  String? datetimeUtc;
  Venue? venue;
  bool? datetimeTbd;
  List<Performers>? performers;
  bool? isOpen;
  List<String>? links;
  String? datetimeLocal;
  bool? timeTbd;
  String? shortTitle;
  String? visibleUntilUtc;
  List<Taxonomies>? taxonomies;
  String? url;
  double? score;
  String? announceDate;
  String? createdAt;
  bool? dateTbd;
  String? title;
  double? popularity;
  String? description;
  String? status;
  bool? conditional;
  bool? generalAdmission;

  Event(
      {this.type,
      this.id,
      this.datetimeUtc,
      this.venue,
      this.datetimeTbd,
      this.performers,
      this.isOpen,
      this.links,
      this.datetimeLocal,
      this.timeTbd,
      this.shortTitle,
      this.visibleUntilUtc,
      this.taxonomies,
      this.url,
      this.score,
      this.announceDate,
      this.createdAt,
      this.dateTbd,
      this.title,
      this.popularity,
      this.description,
      this.status,
      this.conditional,
      this.generalAdmission});

  /// A necessary factory constructor for creating a new Events instance
  /// from a map. Pass the map to the generated `_$EventsFromJson()` constructor.
  /// The constructor is named after the source class, in this case, Events.
  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$EventsToJson`.
  Map<String, dynamic> toJson() => _$EventToJson(this);

  @override
  List<Object?> get props => [
        type,
        id,
        datetimeUtc,
        venue,
        datetimeTbd,
        performers,
        isOpen,
        links,
        datetimeLocal,
        timeTbd,
        shortTitle,
        visibleUntilUtc,
        taxonomies,
        url,
        score,
        announceDate,
        createdAt,
        dateTbd,
        title,
        popularity,
        description,
        status,
        conditional,
        generalAdmission
      ];
}
