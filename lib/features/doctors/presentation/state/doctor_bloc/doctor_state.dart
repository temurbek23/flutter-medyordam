part of 'doctor_bloc.dart';

@immutable
abstract class DoctorState {}

class DoctorInitial extends DoctorState {}
class DoctorLoaded extends DoctorState {
  final DoctorResponseDto data;

  DoctorLoaded({required this.data});
}
class DoctorError extends DoctorState {
  final String message;

  DoctorError({required this.message});
}
