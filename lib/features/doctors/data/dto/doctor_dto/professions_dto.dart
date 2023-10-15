import 'package:json_annotation/json_annotation.dart';
part 'professions_dto.g.dart';

@JsonSerializable()
class ProfessionsDto {
  final int id;
  final String name;


  ProfessionsDto({
    required this.id,
    required this.name
  });

  factory ProfessionsDto.fromJson(Map<String,dynamic> json) => _$ProfessionsDtoFromJson(json);

  Map<String, dynamic> toJson() =>_$ProfessionsDtoToJson(this);
}