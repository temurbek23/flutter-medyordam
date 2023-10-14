
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../../../core/resources/app_dimension.dart';

@RoutePage()
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> with AppDimension {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF2C3B46),
        body: Container());
  }



  @override
  Size get size => MediaQuery.of(context).size;
}
