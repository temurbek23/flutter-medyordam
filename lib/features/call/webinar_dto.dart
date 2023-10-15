import 'package:json_annotation/json_annotation.dart';

part 'webinar_dto.g.dart';

@JsonSerializable()
class WebinarDto {
  final int id;
  final String name;
  final String token;
  final String? offer;
  final String? candidate;

  const WebinarDto({
    required this.id,
    required this.name,
    required this.token,
    this.offer,
    this.candidate,
  });

  factory WebinarDto.fromJson(Map<String, dynamic> json) =>
      _$WebinarDtoFromJson(json);

  Map<String, dynamic> toJson() => _$WebinarDtoToJson(this);
}