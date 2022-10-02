import 'package:digital_14_puspharaj/packages/search_repo/models/documentsource.dart';
import 'package:json_annotation/json_annotation.dart';

part 'taxonamies.g.dart';

@JsonSerializable()
class Taxonomies {
  int? id;
  String? name;
  int? parentId;
  DocumentSource? documentSource;
  int? rank;

  Taxonomies({this.id, this.name, this.parentId, this.documentSource, this.rank});

  factory Taxonomies.fromJson(Map<String, dynamic> json) => _$TaxonomiesFromJson(json);
  Map<String, dynamic> toJson() => _$TaxonomiesToJson(this);
}
