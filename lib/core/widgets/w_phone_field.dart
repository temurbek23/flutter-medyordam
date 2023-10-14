import 'package:dla_bz/core/widgets/w_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../../core/resources/app_colors.dart';
import '../../../core/resources/styles.dart';
import '../resources/app_icons.dart';

class WPhoneField extends StatefulWidget {
  final FocusNode? focusNode;
  final TextEditingController controller;
  final bool isObscure;
  final Widget? prefixIcon;
  final List<TextInputFormatter> formatters;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final int? maxLength;
  final int? maxLines;
  final String? errorText;
  final String? hint;
  final TextAlign textAlign;
  final TextStyle? textStyle;
  final Widget? suffixIcon;
  final Function(String)? onSubmitted;
  final Function(String)? onChanged;
  final bool readOnly;
  final double hintFontSize;
  final EdgeInsets contentPadding;
  final String? label;

  const WPhoneField({
    Key? key,
    this.focusNode,
    required this.controller,
    this.isObscure = false,
    this.prefixIcon,
    this.formatters = const [],
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.next,
    this.maxLength,
    this.maxLines = 1,
    this.errorText,
    this.hint,
    this.textAlign = TextAlign.start,
    this.textStyle,
    this.suffixIcon,
    this.onSubmitted,
    this.onChanged,
    this.contentPadding = const EdgeInsets.symmetric(horizontal: 16),
    this.readOnly = false,
    this.hintFontSize = 14,
    this.label,
  }) : super(key: key);

  @override
  State<WPhoneField> createState() => _WPhoneFieldState();
}

class _WPhoneFieldState extends State<WPhoneField> {
  bool toggle = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (widget.label != null) ...{
              WLabel(label: widget.label!),
            } else ...{
              const SizedBox(),
            },
            const SizedBox(width: 12),
            if (widget.errorText != null) ...{
              Expanded(
                child: Text(
                  widget.errorText!,
                  style: Styles.getTextStyle(
                    fontSize: 12,
                    color: AppColors.danger,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
            },
          ],
        ),


        Container(
          decoration: BoxDecoration(
            color: AppColors.inputColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: widget.errorText==null? AppColors.C_CACACA:AppColors.danger, width: 1
            )
          ),
          padding: const EdgeInsets.symmetric(vertical: 2),
          child: InternationalPhoneNumberInput(
            // maxLines: widget.maxLines,
            // readOnly: widget.readOnly,
            textAlign: widget.textAlign,
            focusNode: widget.focusNode,
            textFieldController: widget.controller,
            onFieldSubmitted: widget.onSubmitted,
            textStyle: widget.textStyle ?? Styles.getTextStyle(),
            // obscureText: widget.isObscure && !toggle,
            // maxLength: widget.maxLength,
            // onInputChanged: widget.onChanged,
            inputDecoration: InputDecoration(
              errorText: widget.errorText != null ? "" : null,
              prefixIcon: widget.prefixIcon,

              suffixIcon: widget.isObscure
                  ? IconButton(
                icon: toggle
                    ? SvgPicture.asset(
                  AppIcons.removedEye,
                  width: 24,
                  height: 24,
                  colorFilter: const ColorFilter.mode(
                      AppColors.C999999, BlendMode.srcIn),
                )
                    : SvgPicture.asset(
                  AppIcons.eye,
                  width: 24,
                  height: 24,
                  colorFilter: const ColorFilter.mode(
                      AppColors.C999999, BlendMode.srcIn),
                ),
                onPressed: () {
                  setState(() {
                    toggle = !toggle;
                  });
                },
              )
                  : widget.suffixIcon,
              filled: true,
              fillColor: widget.readOnly
                  ? AppColors.C_CACACA.withOpacity(0.3)
                  : AppColors.inputColor,
              border: OutlineInputBorder(borderSide: BorderSide.none),
              // enabledBorder: getBorder(),
              // focusedBorder: getBorder(),
              errorBorder: getBorder(color: AppColors.danger),
              contentPadding: widget.contentPadding,
              counterText: "",
              hintText: widget.hint,
              hintStyle: Styles.getTextStyle(
                color: AppColors.C999999,
                letterSpacing: 1,
                fontSize: widget.hintFontSize,
              ),
              errorStyle:
              Styles.getTextStyle(fontSize: 8, color: AppColors.danger),
            ),
           keyboardAction: widget.textInputAction,
            cursorColor: AppColors.primaryColor,
            keyboardType: widget.keyboardType,
            onInputChanged: (PhoneNumber value) {  },
            // inputFormatters: widget.formatters,
          ),
        ),
        if (widget.label != null) ...{
          const SizedBox(height: 12),
        }
      ],
    );
  }

  getBorder({Color? color}) => OutlineInputBorder(
    borderSide: BorderSide(color: color ?? AppColors.C_CACACA, width: 1),
    borderRadius: BorderRadius.circular(10),
  );
}
