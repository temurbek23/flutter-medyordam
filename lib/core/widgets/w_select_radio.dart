import 'package:dla_bz/core/resources/styles.dart';
import 'package:flutter/material.dart';

import '../../../../core/resources/app_colors.dart';

class WSelectRadio extends StatefulWidget {
  final List<dynamic> items;
  final Function(int index) selected;

  const WSelectRadio({super.key, required this.items, required this.selected});

  @override
  State<WSelectRadio> createState() => _WSelectRadioState();
}

class _WSelectRadioState extends State<WSelectRadio> {
int? selectItem;
  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
       ...List.generate(widget.items.length, (index) =>GestureDetector(
         onTap: (){
           setState(() {
            selectItem= index;
           });
         },
         child: Padding(
           padding: const EdgeInsets.only(bottom: 15),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text(widget.items[index],style:Styles.getTextStyle(fontWeight: FontWeight.w500)),
               Container(
                 width: 24,
                 height: 24,
                 alignment: Alignment.center,
                 decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     border: Border.all(
                         color: selectItem==index?AppColors.primaryColor:  AppColors
                             .C999999, width: 1)
                 ),
                 child: selectItem==index ? Container(
                   width: 16,
                   height: 16,
                   decoration: const BoxDecoration(
                       shape: BoxShape.circle,
                       color: AppColors.primaryColor

                   ),
                 ) : null,
               ),
             ],
           ),
         ),
       ) ),
      ],
    );
  }
}
