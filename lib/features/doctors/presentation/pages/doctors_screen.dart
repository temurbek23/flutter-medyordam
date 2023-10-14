import 'package:auto_route/annotations.dart';
import 'package:dla_bz/core/resources/styles.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DoctorsScreen extends StatefulWidget {
  const DoctorsScreen({Key? key}) : super(key: key);

  @override
  State<DoctorsScreen> createState() => _DoctorsScreenState();
}

class _DoctorsScreenState extends State<DoctorsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: AppBar(
          title: Text("Shifokorlar ro’yxati",style: Styles.getTextStyle(),),
        ),
      ),
    );
  }
}