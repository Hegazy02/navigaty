import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:navigaty/core/widgets/custom_appbar.dart';
import 'package:navigaty/features/soroh_boats/presentation/views/widgets/CustomTextField.dart';
import 'package:navigaty/features/soroh_boats/presentation/views/widgets/custom_drop_down_menu.dart';

class YearlySorohViewBody extends StatefulWidget {
  final String title;
  const YearlySorohViewBody({super.key, required this.title});

  @override
  State<YearlySorohViewBody> createState() => _YearlySorohViewBodyState();
}

class _YearlySorohViewBodyState extends State<YearlySorohViewBody> {
  String searchText = '';
  String filter = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(title: widget.title, isBackButtonExists: true),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustonDropDownMenu(
              onSelected: (value) {
                setState(() {
                  filter = value;
                });
              },
            ),
            SizedBox(
                width: 0.5.sw,
                child: CustomTextField(
                  onChanged: (val) {
                    setState(() {
                      searchText = val;
                    });
                  },
                )),
          ],
        )
      ],
    );
  }
}
