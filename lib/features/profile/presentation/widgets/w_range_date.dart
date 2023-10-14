import 'package:dla_bz/core/resources/app_colors.dart';
import 'package:dla_bz/core/resources/app_icons.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WRangeDatePicker extends StatefulWidget {
  const WRangeDatePicker({Key? key}) : super(key: key);

  @override
  State<WRangeDatePicker> createState() => _WRangeDatePickerState();
}

class _WRangeDatePickerState extends State<WRangeDatePicker> {

  DateTimeRange? _selectedDateRange;

  // This function will be triggered when the floating button is pressed
  void _show() async {
    final DateTimeRange? result = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2022, 1, 1),
      lastDate: DateTime(2030, 12, 31),
      currentDate: DateTime.now(),
      saveText: 'Done',
    );

    if (result != null) {
      // Rebuild the UI
      print(result.start.toString());
      setState(() {
        _selectedDateRange = result;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _show,
      child: Container(
        padding: const EdgeInsets.only(left: 18,right: 9,top: 9,bottom: 9),
        margin: const EdgeInsets.symmetric(horizontal: 18),
        decoration: BoxDecoration(
          color: AppColors.inputColor,
          border: Border.all(color: AppColors.borderColor),
          borderRadius: BorderRadius.circular(8)

        ),
        child: _selectedDateRange == null
            ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("all_time".tr()),
                SvgPicture.asset(AppIcons.arrowRight),
              ],
            )
            : Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("${_selectedDateRange?.start.toString().split(' ')[0]} ${_selectedDateRange?.end.toString().split(' ')[0]}"),
            SvgPicture.asset(AppIcons.arrowRight),
          ],
        )
      ),
    );
  }
}

