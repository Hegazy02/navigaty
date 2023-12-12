import 'package:flutter/material.dart';
import 'package:navigaty/core/theme/colors.dart';
import 'package:navigaty/core/theme/styles.dart';

class CustomTextField extends StatelessWidget {
  final void Function(String)? onChanged;
  const CustomTextField({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      textAlign: TextAlign.right,
      style: Styles.style13WhiteBoldCairo,
      cursorColor: Colors.white,
      decoration: InputDecoration(
          filled: true,
          contentPadding: const EdgeInsets.all(0),
          border: customBorder(),
          fillColor: MyColors.primaryColor,
          enabledBorder: customBorder(),
          focusedBorder: customBorder(),
          suffixIcon: const Icon(
            Icons.search,
            color: Colors.white,
          ),
          hintText: "بحث باسم المركب",
          hintStyle: Styles.style13WhiteBoldCairo),
    );
  }

  OutlineInputBorder customBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(width: 0));
  }
}
