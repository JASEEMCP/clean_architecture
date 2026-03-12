import 'package:app/core/utils/common_lib.dart';
import 'package:flutter/services.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    super.key,
    this.obscureText,
    this.controller,
    this.validator,
    required this.label,
    this.suffix,
    this.type,
    this.inputFormatters,
    this.hint,
    this.labelColor,
    this.borderColor,
    this.txtColor,
    this.validate,
    this.textInputAction,
    this.maxLine,
    this.enabled,
    this.autofillHints,
    this.enableSuggestions = false,
  });

  final bool? obscureText;
  final bool? enableSuggestions;
  final bool? validate;
  final TextEditingController? controller;
  final String? Function(String? p1)? validator;
  final String label;
  final String? hint;
  final Widget? suffix;
  final TextInputType? type;
  final List<TextInputFormatter>? inputFormatters;
  final Color? labelColor;
  final Color? borderColor;
  final Color? txtColor;
  final TextInputAction? textInputAction;
  final int? maxLine;
  final bool? enabled;
  final Iterable<String>? autofillHints;

  @override
  Widget build(BuildContext context) {
    final inset = $style.insets;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          txt: label,
          fontSize: 14,
          color: labelColor ?? context.theme.kSecondary,
        ),
        Gap(inset.xxs),
        TextFormField(
          autocorrect: false,
          enableSuggestions: enableSuggestions ?? false,
          enabled: enabled,
          maxLines: maxLine ?? 1,
          minLines: 1,

          keyboardAppearance:
              MediaQuery.platformBrightnessOf(context) == Brightness.dark
              ? Brightness.dark
              : Brightness.light,
          autofillHints: autofillHints,
          inputFormatters: inputFormatters,
          keyboardType: type,
          textInputAction: textInputAction ?? TextInputAction.done,
          obscureText: obscureText ?? false,
          controller: controller,

          validator: validate ?? false
              ? validator ??
                    (v) {
                      if (v!.trim().isEmpty) {
                        return "* Required";
                      }
                      return null;
                    }
              : null,
          style: $style.text.textN14.copyWith(
            color: txtColor ?? context.theme.kSecondary,
          ),

          decoration: InputDecoration(
            errorMaxLines: 2,
            hintText: hint ?? label,
            suffixIcon: suffix,
            hintStyle: $style.text.textN14.copyWith(
              color: txtColor ?? context.theme.kSecondary,
            ),
            contentPadding: const EdgeInsets.all(12),
            border: _applyBorder(context),
            focusedBorder: _applyBorder(context),
            enabledBorder: _applyBorder(context),
            errorBorder: _applyBorder(context),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder _applyBorder(BuildContext context) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: borderColor ?? context.theme.kBlack.withValues(alpha: 0.2),
      ),
      borderRadius: BorderRadius.circular(8),
    );
  }
}
