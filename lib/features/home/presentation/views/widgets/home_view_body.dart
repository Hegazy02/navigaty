import 'package:flutter/material.dart';
import 'package:navigaty/core/helpers/extentions.dart';
import 'package:navigaty/core/routing/routes.dart';
import 'package:navigaty/core/widgets/custom_appbar.dart';
import 'package:navigaty/core/widgets/custom_button.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(
          title: "الصفحة الرئيسية",
          isBackButtonExists: false,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21),
            child: Column(
              children: [
                const SizedBox(
                  height: 65,
                ),
                CustomButton(
                  text: "عدد المراكب في ميناء العريش",
                  onPressed: () {
                    context.pushNamed(Routes.boatsInArishPortView);
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                CustomButton(
                  text: "المراكب السروح",
                  onPressed: () {
                    context.pushNamed(Routes.sorohBoatsView);
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                CustomButton(
                  text: "الأنزالات",
                  onPressed: () {
                    context.pushNamed(Routes.enzalatView);
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                CustomButton(
                  text: "مراكب من خارج المحافظه",
                  onPressed: () {
                    context.pushNamed(Routes.boatsOutsideGovernView);
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                CustomButton(
                  text: "حول",
                  onPressed: () {
                    context.pushNamed(Routes.aboutView);
                  },
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
