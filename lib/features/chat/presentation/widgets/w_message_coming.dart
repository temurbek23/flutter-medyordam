import 'dart:async';
import 'package:flutter/material.dart';
import '../../../../core/resources/app_colors.dart';

class WMessageComing extends StatefulWidget {
  const WMessageComing({Key? key}) : super(key: key);

  @override
  State<WMessageComing> createState() => _WMessageComingState();
}

class _WMessageComingState extends State<WMessageComing> {
  double opacity1 = 1.0;
  double opacity2 = 0.6;
  double opacity3 = 0.2;

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        final temp = opacity1;
        opacity1 = opacity2;
        opacity2 = opacity3;
        opacity3 = temp; // Toggle between 1.0 and 0.2
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AnimatedContainer(
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut,
          padding:
          const EdgeInsets.only(top: 27, bottom: 23, right: 24, left: 24),
          decoration: BoxDecoration(
            color: AppColors.C_171215.withOpacity(0.1),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(24),
              topLeft: Radius.circular(24),
              bottomRight: Radius.circular(24),
              bottomLeft: Radius.circular(4),
            ),
          ),
          child: Row(
            children: [
              AnimatedContainer(
                duration: const Duration(seconds: 1),
                curve: Curves.easeInOut,
                width: 6, // Increase the size of the dots
                height: 6, // Increase the size of the dots
                decoration: BoxDecoration(
                  color: AppColors.C_171215.withOpacity(opacity1),
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 6),
                child: AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInOut,
                  width: 6, // Increase the size of the dots
                  height: 6, // Increase the size of the dots
                  decoration: BoxDecoration(
                    color: AppColors.C_171215.withOpacity(opacity3),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              AnimatedContainer(
                duration: const Duration(seconds: 1),
                curve: Curves.easeInOut,
                width: 6, // Increase the size of the dots
                height: 6, // Increase the size of the dots
                decoration: BoxDecoration(
                  color: AppColors.C_171215.withOpacity(opacity2),
                  shape: BoxShape.circle,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
