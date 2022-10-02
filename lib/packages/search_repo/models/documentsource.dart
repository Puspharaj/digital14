import 'package:json_annotation/json_annotation.dart';

part 'documentsource.g.dart';

@JsonSerializable()
class DocumentSource {
  String? sourceType;
  String? generationType;

  DocumentSource({this.generationType, this.sourceType});

  factory DocumentSource.fromJson(Map<String, dynamic> json) => _$DocumentSourceFromJson(json);
  Map<String, dynamic> toJson() => _$DocumentSourceToJson(this);
}
