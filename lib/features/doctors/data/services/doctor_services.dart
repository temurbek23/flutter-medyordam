import 'package:dio/dio.dart';
import 'package:dla_bz/features/doctors/data/dto/doctor_dto/doctor_response_dto.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dla_bz/core/network/urls.dart';
part 'doctor_services.g.dart';

@RestApi(baseUrl: Urls.baseURl)
abstract class DoctorServices {
  factory DoctorServices(Dio dio, {String baseUrl}) = _DoctorServices;

  @GET("/doctor")
  Future<HttpResponse<DoctorResponseDto>> getDoctorAll();

}
