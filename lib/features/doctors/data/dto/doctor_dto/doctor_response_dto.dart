import 'package:json_annotation/json_annotation.dart';

import 'doctor_dto.dart';
part 'doctor_response_dto.g.dart';

@JsonSerializable()
class DoctorResponseDto {
  final String? message;
  final List<DoctorDto> data;
  final int? code;

  DoctorResponseDto({
    required this.message,
    required this.data,
    required this.code
  });

  factory DoctorResponseDto.fromJson(Map<String,dynamic> json) => _$DoctorResponseDtoFromJson(json);

  Map<String, dynamic> toJson() =>_$DoctorResponseDtoToJson(this);
}