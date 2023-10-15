import 'package:json_annotation/json_annotation.dart';
part 'doctor_dto.g.dart';

@JsonSerializable()
class DoctorDto {
  final int? id;
  final String? firstname;
  final String? lastname;
  final String? password;
  final String? email;
  final String? contact;
  final String? about;
  final String? education;
  final String? practice;
  final String? residency;
  final String? photo;

  DoctorDto({
    required this.photo,
    required this.id,
    required this.email,
    required this.password,
    required this.about,
    required this.contact,
    required this.education,
    required this.firstname,
    required this.lastname,
    required this.practice,
    required this.residency
  });

  factory DoctorDto.fromJson(Map<String,dynamic> json) => _$DoctorDtoFromJson(json);

  Map<String, dynamic> toJson() =>_$DoctorDtoToJson(this);
}