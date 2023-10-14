
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../../../core/resources/app_dimension.dart';

@RoutePage()
class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> with AppDimension {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF2C3B46),
        body: Container());
  }



  @override
  Size get size => MediaQuery.of(context).size;
}
