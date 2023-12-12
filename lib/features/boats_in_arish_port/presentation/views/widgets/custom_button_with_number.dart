import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:navigaty/core/theme/colors.dart';
import 'package:navigaty/core/theme/styles.dart';
import 'package:navigaty/core/widgets/custom_button.dart';

class CustomButtonWithNumber extends StatelessWidget {
  final String text;
  final int number;
  final void Function()? onPressed;
  const CustomButtonWithNumber(
      {super.key,
      required this.text,
      required this.number,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Stack(children: [
        CustomButton(text: text, onPressed: onPressed),
        Positioned(
            right: 0,
            child: Container(
                width: 70.w,
                height: 60.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: MyColors.darkBlue,
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "$number",
                  style: Styles.style16WhiteBoldCairo,
                )))
      ]),
    );
  }
}
