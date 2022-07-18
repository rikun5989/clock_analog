import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTextFormField extends StatelessWidget {
  final String? topHintText;
  final String? hintText;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final TextCapitalization textCapitalization;
  final bool obscureText;
  final bool autoValidate;
  final bool readOnly;
  final FormFieldValidator<String>? validator;
  final int? maxLength;
  final int minLines;
  final int maxLines;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final FocusNode? focusNode;
  final ValueChanged<String>? onFieldSubmitted;
  final ValueChanged<String>? onValueChanges;
  final GestureTapCallback? onTap;
  final Color? fillColor;
  final Color? underlineColor;
  final bool counterDisplay;
  final Color? textColor;
  final TextAlign textAlign;
  final TextStyle? textStyle;

  const AppTextFormField(
      {Key? key,
      this.controller,
      this.topHintText,
      this.hintText,
      this.validator,
      this.obscureText = false,
      this.autoValidate = false,
      this.keyboardType = TextInputType.text,
      this.textInputAction = TextInputAction.next,
      this.textCapitalization = TextCapitalization.none,
      this.maxLength,
      this.minLines = 1,
      this.maxLines = 1,
      this.readOnly = false,
      this.inputFormatters,
      this.suffixIcon,
      this.prefixIcon,
      this.focusNode,
      this.onFieldSubmitted,
      this.onTap,
      this.onValueChanges,
      this.fillColor,
      this.underlineColor,
      this.counterDisplay = true,
      this.textColor,
      this.textAlign = TextAlign.start,
      this.textStyle,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (topHintText != null)
          Text(
            topHintText!,
            style: Theme.of(context).textTheme.headline6
          ),
        if (topHintText != null)
        const SizedBox(height: 5),
        TextFormField(
          obscureText: obscureText,
          controller: controller,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          textCapitalization: textCapitalization,
          readOnly: readOnly,
          enabled: true,
          focusNode: focusNode,
          maxLength: maxLength,
          minLines: minLines,
          maxLines: maxLines > minLines ? maxLines : minLines,
          onFieldSubmitted: onFieldSubmitted,
          textAlign: textAlign,
          autovalidateMode: autoValidate
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          validator: validator,
          onTap: onTap,
          style: textStyle,
          inputFormatters: inputFormatters,
          onChanged: onValueChanges,
          decoration: InputDecoration(
            fillColor: fillColor,
            counter: counterDisplay == false ? const Offstage() : null,
            hintText: hintText,
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
          ),
          /*decoration: InputDecoration(
              alignLabelWithHint : true,
              fillColor: fillColor,
              filled: true,
              isDense: false,
              isCollapsed: false,
              counter: counterDisplay == false ? const Offstage() : null,
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.textBoxEnabledBorderColor),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.textBoxFocusedBorderColor),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.etErrorColor),
              ),
              focusedErrorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.etErrorColor),
              ),
              labelText: labelText,
              errorMaxLines: 2,
              errorStyle: const TextStyle(
                  color: AppColors.etErrorColor,
                  fontFamily: AppFonts.regular,
                  fontSize: 12),
              hintStyle: TextStyle(
                  fontFamily: AppFonts.regular,
                  fontSize: 15,
                  color: AppColors.labelHintTextColor
              ),
              labelStyle: TextStyle(
                  fontFamily: AppFonts.hintRegular,
                  fontSize: 15,
                color: AppColors.labelHintTextColor
              ),
              counterStyle: TextStyle(
                  color: Theme.of(context).primaryColor,// AppColors.primaryColor,
                  fontFamily: AppFonts.regular,
                  fontSize: 15) ,
              suffixIcon: suffixIcon,
              prefixIcon: prefixIcon,
              floatingLabelBehavior: FloatingLabelBehavior.never),*/
        ),
      ],
    );
  }
}
