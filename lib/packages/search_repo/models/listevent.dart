import 'package:digital_14_puspharaj/packages/search_repo/models/event.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'listevent.g.dart';

@JsonSerializable()
class ListEvent extends Equatable {
  final List<Event>? events;

  const ListEvent({this.events});

  factory ListEvent.fromJson(Map<String, dynamic> json) => _$ListEventFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$EventsToJson`.
  Map<String, dynamic> toJson() => _$ListEventToJson(this);

  @override
  List<Object?> get props => [events];
}
