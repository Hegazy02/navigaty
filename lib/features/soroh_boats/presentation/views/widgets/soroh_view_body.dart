import 'package:flutter/material.dart';
import 'package:navigaty/core/widgets/custom_appbar.dart';

class SorohBoatsViewBody extends StatelessWidget {
  const SorohBoatsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(
          title: "المراكب السروح",
          isBackButtonExists: true,
        ),
      ],
    );
  }
}
