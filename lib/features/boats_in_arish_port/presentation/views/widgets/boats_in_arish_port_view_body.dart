import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:navigaty/core/theme/styles.dart';
import 'package:navigaty/core/widgets/custom_appbar.dart';
import 'package:navigaty/features/boats_in_arish_port/presentation/views/widgets/custom_button_with_number.dart';

class BoatsInArishPortViewBody extends StatelessWidget {
  const BoatsInArishPortViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(
          title: "عدد المراكب في ميناء العريش",
          isBackButtonExists: true,
        ),
        Padding(
          padding: const EdgeInsets.all(39),
          child: Column(
            children: [
              Text(
                'العدد الكلي للمراكب \n حسب الحرفة من الجدول',
                textAlign: TextAlign.center,
                style: Styles.style20WBlackBoldCairo,
              ),
              SizedBox(
                height: 79.h,
              ),
              CustomButtonWithNumber(
                text: 'مركبة دبة',
                number: 163,
                onPressed: () {},
              ),
              CustomButtonWithNumber(
                text: 'مركبة شراعي',
                number: 3,
                onPressed: () {},
              ),
              CustomButtonWithNumber(
                text: "مركبة شانشولا",
                number: 50,
                onPressed: () {},
              ),
              CustomButtonWithNumber(
                text: "مركبة سنار",
                number: 9,
                onPressed: () {},
              ),
              CustomButtonWithNumber(
                text: "العدد الكلي",
                number: 225,
                onPressed: () {},
              ),
            ],
          ),
        )
      ],
    );
  }
}
