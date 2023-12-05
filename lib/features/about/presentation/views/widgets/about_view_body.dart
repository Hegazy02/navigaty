import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_appbar.dart';

class AboutViewBody extends StatelessWidget {
  const AboutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(
          title: "حول",
          isBackButtonExists: true,
        ),
      ],
    );
  }
}
