import 'package:flutter/material.dart';
import 'package:navigaty/core/widgets/custom_appbar.dart';

class BoatsInArishPortViewBody extends StatelessWidget {
  const BoatsInArishPortViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(
          title: "عدد المراكب في ميناء العريش",
          isBackButtonExists: true,
        ),
      ],
    );
  }
}
