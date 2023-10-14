import 'package:flutter/material.dart';
import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/styles.dart';

class WChatMessage extends StatelessWidget {
  final bool receivedMessage;
  final String message;
  final String date;

  const WChatMessage({
    required this.receivedMessage,
    required this.message,
    required this.date,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: receivedMessage ? CrossAxisAlignment.start:CrossAxisAlignment.end,
      children: [
        Container(
          width: double.infinity,
          alignment: receivedMessage ?Alignment.centerLeft :Alignment.topRight,
          child: Container(
            width: 200,
            padding:  EdgeInsets.only(top: 16,bottom: 16,left:receivedMessage ? 14: 24,right: receivedMessage ? 24:14),
            decoration: BoxDecoration(
              color: receivedMessage ?AppColors.C_171215.withOpacity(0.1):AppColors.primaryColor,
              borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(24),
                  topRight: const Radius.circular(24),
                  bottomLeft: Radius.circular(receivedMessage ?4:24),
                  bottomRight: Radius.circular(receivedMessage ? 24 :4)),
            ),
            child: Text(
              message,
              style: Styles.getTextStyle(color: receivedMessage ?AppColors.C_171215:AppColors.white),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Text(date,style: Styles.getTextStyle(color: AppColors.C_171215.withOpacity(0.4)),),
        ),
      ],
    );
  }


}
