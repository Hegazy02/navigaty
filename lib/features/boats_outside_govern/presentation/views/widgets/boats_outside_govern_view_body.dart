import 'package:flutter/material.dart';
import 'package:navigaty/core/widgets/custom_appbar.dart';

class BoatsOutsideGovernViewBody extends StatelessWidget {
  const BoatsOutsideGovernViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(
          title: "مراكب من خارج المحافظه",
          isBackButtonExists: true,
        ),
      ],
    );
  }
}
