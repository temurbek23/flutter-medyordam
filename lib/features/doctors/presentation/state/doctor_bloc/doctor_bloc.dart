import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dla_bz/core/resources/data_state.dart';
import 'package:dla_bz/features/doctors/data/dto/doctor_dto/doctor_response_dto.dart';
import 'package:dla_bz/features/doctors/domain/repositories/doctor_repo.dart';
import 'package:meta/meta.dart';

import '../../../domain/use_case/doctor_use_case.dart';

part 'doctor_event.dart';
part 'doctor_state.dart';

class DoctorBloc extends Bloc<DoctorEvent, DoctorState> {
  final DoctorRepo doctorRepo;

  DoctorBloc({required this.doctorRepo}) : super(DoctorInitial()) {
    on<DoctorLoading>((event, emit) async{
      emit(DoctorInitial());
      final response = await doctorRepo.getDoctorAll();
      if(response is DataSuccess){
        emit(DoctorLoaded(data: response.data!));
      }else{
        emit(DoctorError(message: response.errorResponse?.message??"Error"));
      }
    });
  }
}
