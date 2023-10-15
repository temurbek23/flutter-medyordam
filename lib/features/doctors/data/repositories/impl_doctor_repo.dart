import 'package:dla_bz/core/resources/data_state.dart';
import 'package:dla_bz/features/doctors/data/dto/doctor_dto/doctor_response_dto.dart';
import 'package:dla_bz/features/doctors/data/services/doctor_services.dart';
import '../../../../core/error/exception_handler.dart';
import '../../domain/repositories/doctor_repo.dart';

class ImplDoctorRepo extends DoctorRepo{
  DoctorServices doctorServices;

  ImplDoctorRepo({
    required this.doctorServices
});

  _getError<T>(dynamic exception) => DataException.getError<T>(exception);

  @override
  Future<DataState<DoctorResponseDto>> getDoctorAll() async{
    try{
      final response = await doctorServices.getDoctorAll();
      return DataSuccess(data: response.data);
    }catch(e){
      print(e);
        return _getError<DoctorResponseDto>(e);
    }
  }

}