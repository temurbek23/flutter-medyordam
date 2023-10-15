
import 'package:dla_bz/features/doctors/data/dto/doctor_dto/doctor_response_dto.dart';
import 'package:dla_bz/features/doctors/domain/repositories/doctor_repo.dart';

import '../../../../core/resources/data_state.dart';

class DoctorUseCase {
  final DoctorRepo doctorRepo;

  DoctorUseCase({required this.doctorRepo});

  Future<DataState<DoctorResponseDto>> getAllDoctor()async{
    return await doctorRepo.getDoctorAll();
  }
}