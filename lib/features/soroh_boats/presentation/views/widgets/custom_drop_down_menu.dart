import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:navigaty/core/theme/colors.dart';
import 'package:navigaty/core/theme/styles.dart';

class CustonDropDownMenu extends StatefulWidget {
  final Function(dynamic)? onSelected;
  const CustonDropDownMenu({super.key, required this.onSelected});

  @override
  State<CustonDropDownMenu> createState() => _CustonDropDownMenuState();
}

class _CustonDropDownMenuState extends State<CustonDropDownMenu> {
  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      onSelected: widget.onSelected,
      label: Align(
          alignment: Alignment.centerRight,
          child: Text(
            "تصنيف",
            textAlign: TextAlign.right,
            style: Styles.style13WhiteBoldCairo,
          )),
      textStyle: Styles.style13WhiteBoldCairo,
      menuStyle: const MenuStyle(
          backgroundColor: MaterialStatePropertyAll(MyColors.primaryColor)),
      inputDecorationTheme: InputDecorationTheme(
        floatingLabelBehavior: FloatingLabelBehavior.never,
        suffixIconColor: Colors.white,
        constraints: BoxConstraints(maxHeight: 60.h),
        fillColor: MyColors.primaryColor,
        filled: true,
        contentPadding: const EdgeInsets.only(left: 30),
        border: customBorder(),
        enabledBorder: customBorder(),
        focusedBorder: customBorder(),
      ),
      dropdownMenuEntries: getEntries(),
    );
  }

  List<DropdownMenuEntry> getEntries() {
    List<String> data = ['دابة', 'شانشولا', 'سنار', 'شراعي'];
    return data
        .map((e) => DropdownMenuEntry(
            value: e,
            label: e,
            labelWidget: Align(
              alignment: Alignment.centerRight,
              child: Text(
                e,
                style: Styles.style13WhiteBoldCairo,
                textAlign: TextAlign.right,
              ),
            )))
        .toList();
  }

  OutlineInputBorder customBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(width: 0));
  }
}
