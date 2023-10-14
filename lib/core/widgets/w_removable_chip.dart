import 'package:flutter/material.dart';

import '../resources/styles.dart';

class WRemovableChip extends StatelessWidget {
  final String title;
  final GestureTapCallback onCloseTap;

  const WRemovableChip({
    Key? key,
    required this.title,
    required this.onCloseTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
      decoration: BoxDecoration(
        color: const Color(0xFFE1F1E4),
          borderRadius: BorderRadius.circular(16),
         ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style:
                Styles.getTextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),

        ],
      ),
    );
  }
}
