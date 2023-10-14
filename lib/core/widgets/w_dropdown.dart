import 'package:dla_bz/core/widgets/w_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../resources/app_colors.dart';
import '../resources/app_icons.dart';
import '../resources/styles.dart';
class WDropDownButton extends StatefulWidget {
  final List<dynamic> items;
  final String label;
  const WDropDownButton({Key? key, required this.items, required this.label}) : super(key: key);

  @override
  State<WDropDownButton> createState() => _WDropDownButtonState();
}

class _WDropDownButtonState extends State<WDropDownButton> {
int  itemId=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WLabel(label: widget.label),
        const SizedBox(height: 6,),
        Container(
          padding: const EdgeInsets.only(right: 18,left: 11),
          decoration: BoxDecoration(
              color: AppColors.inputColor,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  color:  AppColors.C_CACACA, width: 1
              )
          ),
          child: DropdownButton<int>(
            value:itemId ,
            isExpanded: true,
            dropdownColor: const Color(0xFFFFFFFF),
            icon: SvgPicture.asset(
              AppIcons.arrowDown,
              width: 16,
              height: 16,
            ),
            underline: const SizedBox(),
            style: Styles.getTextStyle(),
            items: List.generate(
              2,
                  (index) {
                return DropdownMenuItem(
                  value: index,
                  child: Text(
                    widget.items[index],
                    style: Styles.getTextStyle(),
                    overflow: TextOverflow.ellipsis,
                  ),
                );
              },
            ),
            onChanged: (int? value) {
              setState(() {
                itemId=value??0;
              });
            },
          ),
        ),

          const SizedBox(height: 12),

      ],
    );
  }
}
