import 'dart:ui';

import 'package:app/presentation/widget/custom_button.dart';
import 'package:app/presentation/widget/custom_circle_btn.dart';
import 'package:app/presentation/widget/custom_text_field_widget.dart';
import 'package:app/resource/utils/common_lib.dart';
import 'package:flutter/cupertino.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.txt,
    this.fontSize,
    this.color,
    this.fontWeight,
    this.maxLine,
    this.overflow,
    this.textAlign,
  });
  final String txt;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final int? maxLine;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    final inset = $style.insets;
    return Text(
      txt,
      textScaler: const TextScaler.linear(1),
      maxLines: maxLine,
      textAlign: textAlign,
      style: $style.text.textN16.copyWith(
        color: color,
        fontSize: inset.customSize(fontSize ?? 16),
        fontWeight: fontWeight,
        overflow: overflow,
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.txt,
    this.fontSize,
    this.color,
    this.fontWeight,
    this.maxLine,
    this.onTap,
  });
  final String txt;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final int? maxLine;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        txt,
        textScaler: const TextScaler.linear(1),
        maxLines: maxLine,
        style: $style.text.textSBold12.copyWith(
          color: color ?? Colors.indigo,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}

Future<dynamic> customAlertBox(
  BuildContext context, {
  Function()? onTap,
  String? title,
  String? content,
}) {
  return showDialog(
    context: context,
    builder: (ctx) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),

        child: AlertDialog(
          surfaceTintColor: Colors.white,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                fontSize: 18,
                color: Colors.indigo,
                txt: title ?? 'Payment Option',
              ),
              CustomCircleBtn(
                icon: Icons.close_rounded,
                onTap: () {
                  context.pop();
                },
              ),
            ],
          ),
          scrollable: true,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomTextFieldWidget(label: 'Remark'),
              Gap(5),
              RadioListTile(
                value: 'cash',
                groupValue: 'cash',
                title: CustomText(txt: 'CASH'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(10),
                ),
                onChanged: (v) {},
              ),
              RadioListTile(
                value: 'bank',
                groupValue: 'cash',
                title: CustomText(txt: 'BANK'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(10),
                ),
                onChanged: (v) {},
              ),
            ],
          ),
          actions: [
            CustomButton(
              text: 'Confirm',
              bgColor: Colors.green,
              onTap: onTap ?? () {},
            ),
          ],
        ),
      );
    },
  );
}

Center errorHandleText(
  BuildContext ctx, {
  required String btnName,
  required String errorText,
  required Function() onTap,
}) {
  final inset = $style.insets;
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: inset.sm,
      children: [
        CustomText(txt: errorText),
        CustomButton(
          width: 120,
          text: btnName,
          onTap: onTap,

          bgColor: ctx.theme.kSecondaryLight,
        ),
      ],
    ),
  );
}

Future<dynamic> customAlertDialog(
  BuildContext context, {
  Function()? onTap,
  String? title,
  String? content,
  Widget? btn,
}) {
  return showDialog(
    context: context,
    builder: (ctx) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),

        child: AlertDialog(
          surfaceTintColor: Colors.white,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                fontSize: 18,
                color: Colors.indigo,
                txt: title ?? 'Payment Option',
              ),

              CustomCircleBtn(
                icon: Icons.close_rounded,
                onTap: () {
                  context.pop();
                },
              ),
            ],
          ),
          scrollable: true,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomText(
                fontSize: 16,
                color: Colors.black54,
                txt: content ?? "Content",
              ),
            ],
          ),
          actions: [
            ?btn,
          ],
        ),
      );
    },
  );
}

class IOSDatePickerSheet extends StatefulWidget {
  final DateTime initial;
  final DateTime min;
  final DateTime max;

  const IOSDatePickerSheet({
    super.key,
    required this.initial,
    required this.min,
    required this.max,
  });

  @override
  State<IOSDatePickerSheet> createState() => _IOSDatePickerSheetState();
}

class _IOSDatePickerSheetState extends State<IOSDatePickerSheet> {
  late DateTime selectedDate;

  @override
  void initState() {
    super.initState();
    selectedDate = widget.initial; // always stable
  }

  @override
  Widget build(BuildContext context) {
    final inset = $style.insets;
    return Container(
      height: 280,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 200,
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.date,
              maximumYear: widget.max.year,
              minimumYear: widget.min.year,
              initialDateTime: widget.initial,
              onDateTimeChanged: (value) {
                selectedDate = value;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: inset.sm),
            child: Row(
              spacing: inset.sm,
              children: [
                Expanded(
                  child: CustomButton(
                    text: "Cancel",
                    bgColor: Colors.red,
                    onTap: () => context.pop(),
                  ),
                ),
                Expanded(
                  child: CustomButton(
                    text: "Done",
                    onTap: () => Navigator.pop(context, selectedDate),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class IOSTimePickerSheet extends StatefulWidget {
  final TimeOfDay initial;

  const IOSTimePickerSheet({
    super.key,
    required this.initial,
  });

  @override
  State<IOSTimePickerSheet> createState() => _IOSTimePickerSheetState();
}

class _IOSTimePickerSheetState extends State<IOSTimePickerSheet> {
  late TimeOfDay selectedTime;

  @override
  void initState() {
    super.initState();
    selectedTime = widget.initial; // stable value, no reset
  }

  @override
  Widget build(BuildContext context) {
    final inset = $style.insets;

    // Convert initial TimeOfDay to DateTime
    final initialDateTime = DateTime(
      0,
      1,
      1,
      selectedTime.hour,
      selectedTime.minute,
    );

    return Container(
      height: 280,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 200,
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.time,
              use24hFormat: false, // AM/PM format
              initialDateTime: initialDateTime,
              onDateTimeChanged: (value) {
                selectedTime = TimeOfDay(
                  hour: value.hour,
                  minute: value.minute,
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: inset.sm),
            child: Row(
              spacing: inset.sm,
              children: [
                Expanded(
                  child: CustomButton(
                    text: "Cancel",
                    bgColor: Colors.red,
                    onTap: () => Navigator.pop(context),
                  ),
                ),
                Expanded(
                  child: CustomButton(
                    text: "Done",
                    onTap: () => Navigator.pop(context, selectedTime),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
