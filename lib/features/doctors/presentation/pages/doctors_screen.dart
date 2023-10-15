import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dla_bz/config/routes/route_path.dart';
import 'package:dla_bz/core/resources/styles.dart';
import 'package:dla_bz/features/doctors/presentation/pages/select_doctor.dart';
import 'package:dla_bz/features/doctors/presentation/widgets/w_doctor_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../config/routes/router.gr.dart';
import '../../../../core/resources/app_colors.dart';
import '../state/doctor_bloc/doctor_bloc.dart';

@RoutePage()
class DoctorsScreen extends StatefulWidget {
  const DoctorsScreen({Key? key}) : super(key: key);

  @override
  State<DoctorsScreen> createState() => _DoctorsScreenState();
}

class _DoctorsScreenState extends State<DoctorsScreen> {
  @override
  void initState() {
    context.read<DoctorBloc>().add(DoctorLoading());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.C_F4F4F4,
      appBar: AppBar(
        backgroundColor: AppColors.C_F4F4F4,
        elevation: 0,
        title: Text(
          "Shifokorlar ro’yxati",
          style: Styles.getTextStyle(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 1,
              color: AppColors.cardColor,
            ),
            BlocBuilder<DoctorBloc, DoctorState>(
              builder: (context, state) {
                if(state is DoctorInitial){
                  return const Center(child: CircularProgressIndicator());
                }else if(state is DoctorLoaded){
                  return Column(
                    children: [
                      ...List.generate(
                        state.data.data.length,
                            (index) =>
                                WDoctorItems(
                          onTap: () {
                            context.router.push(SelectDoctorRoute(data: state.data.data[index]));
                          },
                          data: state.data.data[index],
                        ),
                      )
                    ],
                  );
                }else{
                  return const SizedBox();
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
