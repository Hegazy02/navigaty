import 'package:flutter/material.dart';
import 'package:navigaty/core/widgets/custom_appbar.dart';

class EnzalatBody extends StatelessWidget {
  const EnzalatBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(
          title: "الأنزالات",
          isBackButtonExists: true,
        ),
      ],
    );
  }
}
