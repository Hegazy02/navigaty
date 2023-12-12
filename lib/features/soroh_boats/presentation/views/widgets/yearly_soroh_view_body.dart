import 'package:flutter/material.dart';
import 'package:navigaty/core/widgets/custom_appbar.dart';

class YearlySorohViewBody extends StatelessWidget {
  final String title;
  const YearlySorohViewBody({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [CustomAppBar(title: title, isBackButtonExists: true)],
    );
  }
}
