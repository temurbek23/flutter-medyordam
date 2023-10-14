import 'package:flutter/material.dart';

import '../resources/styles.dart';

class WLabel extends StatelessWidget {
  final String label;
  final EdgeInsets? padding;

  const WLabel({
    Key? key,
    required this.label,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.only(bottom: 4),
      child: Text(
        label.capitalize(),
        style: Styles.getTextStyle(
          color: const Color(0xFF747173),
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

extension Upper on String {
  String capitalize() {
    if (isEmpty) {
      return this;
    }
    return this[0].toUpperCase() + substring(1);
  }
}
