import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:navigaty/core/helpers/extentions.dart';
import 'package:navigaty/core/routing/routes.dart';
import 'package:navigaty/core/widgets/custom_appbar.dart';
import 'package:navigaty/core/widgets/custom_button.dart';

class SorohBoatsViewBody extends StatelessWidget {
  const SorohBoatsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(
          title: "المراكب السروح",
          isBackButtonExists: true,
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              CustomButton(
                  text: "السروح الحالي",
                  onPressed: () {
                    context.pushNamed(Routes.currentSoroh,
                        arguments: "السروح الحالي");
                  }),
              SizedBox(
                height: 25.h,
              ),
              CustomButton(
                  text: "السروح اليومي",
                  onPressed: () {
                    context.pushNamed(Routes.dailySoroh,
                        arguments: "السروح اليومي");
                  }),
              SizedBox(
                height: 25.h,
              ),
              CustomButton(
                  text: "السروح الشهري",
                  onPressed: () {
                    context.pushNamed(Routes.monthlySoroh,
                        arguments: "السروح الشهري");
                  }),
              SizedBox(
                height: 25.h,
              ),
              CustomButton(
                  text: "السروح السنوي",
                  onPressed: () {
                    context.pushNamed(Routes.yearlySoroh,
                        arguments: "السروح السنوي");
                  }),
            ],
          ),
        )
      ],
    );
  }
}
