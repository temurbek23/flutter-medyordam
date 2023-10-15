
import 'package:dla_bz/features/doctors/data/dto/doctor_dto/doctor_response_dto.dart';

import '../../../../core/resources/data_state.dart';

abstract class DoctorRepo{
  Future<DataState<DoctorResponseDto>> getDoctorAll();
}
