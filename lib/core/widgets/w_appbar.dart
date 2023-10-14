import 'package:auto_route/auto_route.dart';
import 'package:dla_bz/core/resources/app_colors.dart';
import 'package:dla_bz/core/resources/app_icons.dart';
import 'package:dla_bz/core/resources/styles.dart';
import 'package:dla_bz/core/widgets/w_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final bool bottomElevation;
 final ScrollController? controller ;
 final bool isScroll;


  const WAppBar(
      {Key? key,
      required this.title,
      this.actions,
        this.controller,
        this.isScroll=false,
      this.bottomElevation = false})
      : super(key: key);

  @override
  State<WAppBar> createState() => _WAppBarState();

  @override
  Size get preferredSize => const Size(double.infinity, 58);
}

class _WAppBarState extends State<WAppBar> {
 bool isScroll=false;
  @override
  void initState() {

    if(widget.controller==null||widget.isScroll){
      setState(() {
        isScroll=true;
      });
      widget.controller?.addListener(() {
        if (!(widget.controller?.position.userScrollDirection ==
            ScrollDirection.forward)) {

          setState(() {
            isScroll=false;
          });
        }else{
          setState(() {
            isScroll=true;
          });
        }
      });
    }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 24, right: 18, top: 10, bottom: 14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () {
                      context.router.pop();
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(),
                      child: SvgPicture.asset(AppIcons.arrowLeft),
                    ),
                  ),
                  const SizedBox(
                    width: 13,
                  ),
                  Flexible(
                    child: Text(
                      widget.title,
                      style: Styles.getTextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: AppColors.C_171215),
                      maxLines: 1,
                    ),
                  )
                ],
              ),
              if (widget.actions != null) ...{
                Row(
                  children: widget.actions ?? [],
                )
              }
            ],
          ),
        ),
        if (widget.bottomElevation) ...{
          Container(
            height: 1,
            color: AppColors.borderColor,
          ),
        },
        if (isScroll && widget.bottomElevation) ...{const WDivider()}
      ],
    );
  }

}
