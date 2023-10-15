import 'package:dio/dio.dart';
import 'package:dla_bz/core/state/provider/app_bar_provider.dart';
import 'package:dla_bz/features/doctors/data/repositories/impl_doctor_repo.dart';
import 'package:dla_bz/features/doctors/data/services/doctor_services.dart';
import 'package:dla_bz/features/doctors/domain/repositories/doctor_repo.dart';
import 'package:dla_bz/features/doctors/domain/use_case/doctor_use_case.dart';
import 'package:dla_bz/features/doctors/presentation/state/doctor_bloc/doctor_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import '../state/bloc/bottom_nav_bar/bottom_nav_bar_bloc.dart';
import 'locator.dart';

class Injector extends StatelessWidget {
  final Widget child;

  const Injector({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        ..._getDoctorRepo()
      ],
      child: MultiBlocProvider(providers: [
        BlocProvider<BottomNavBarBloc>(
          create: (context) => BottomNavBarBloc(),
        ),
        BlocProvider<DoctorBloc>(
          create: (context) => DoctorBloc(doctorRepo: context.read()),
        ),
      ], child: child,
      ),
    );
  }

  _getDoctorRepo() => [
    RepositoryProvider<DoctorServices>(
      create: (context) => DoctorServices(locator<Dio>()),
    ),
    RepositoryProvider<DoctorRepo>(
      create: (context) => ImplDoctorRepo(doctorServices: context.read()),
    ),
  ];

}
