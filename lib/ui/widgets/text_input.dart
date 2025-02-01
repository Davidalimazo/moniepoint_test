import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_test/config/theme/app_colors.dart';

Widget textInput(
    {TextEditingController? controller,
    bool enable = true,
    String hint = '',
    dynamic icon,
    dynamic suffixIcon,
    bool formatter = false,
    String label = '',
    dynamic regex,
    String? initialValue,
    TextInputAction textInputAction = TextInputAction.done,
    bool? allowSpace = false,
    int maxLength = 15,
    int? maxLines,
    Color fillColor = AppColors.pW100,
    bool isFilled = false,
    ValueChanged<String>? onChanged,
    TextInputType type = TextInputType.text,
    required BuildContext context,
    Color textColor = AppColors.darkShade20,
    required Function(String val) validate,
    FocusNode? focusNode}) {
  return TextFormField(
    style: TextStyle(fontSize: 18.sp, height: 1.h, color: textColor),
    validator: (val) => validate(val!),
    enabled: enable,
    controller: initialValue != null ? null : controller,
    maxLines: maxLines,
    keyboardType: type,
    maxLength: maxLength,
    textInputAction: textInputAction,
    focusNode: focusNode,
    initialValue: initialValue,
    onChanged: onChanged,
    autovalidateMode: AutovalidateMode.onUserInteraction,
    inputFormatters: formatter == true
        ? [FilteringTextInputFormatter.digitsOnly]
        : [
            allowSpace!
                ? FilteringTextInputFormatter.allow(
                    regex != null ? regex : RegExp(r'[a-zA-Z0-9. ]'))
                : FilteringTextInputFormatter.allow(
                    regex != null ? regex : RegExp(r'[a-zA-Z0-9.]'))
          ],
    decoration: InputDecoration(
      filled: isFilled,
      fillColor: fillColor,
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(48.r),
          borderSide: const BorderSide(color: Colors.grey)),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(48.r),
        borderSide: const BorderSide(
          color: AppColors.pW100,
        ),
      ),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(48.r),
          borderSide: BorderSide(color: Colors.grey, width: 1.5)),
      counter: const Offstage(),
      prefixIcon: icon,
      suffixIcon: suffixIcon,
      hintText: hint,
    ),
  );
}
