import 'package:flutter/material.dart';
import 'package:navigaty/core/widgets/custom_appbar.dart';

class DailySorohViewBody extends StatelessWidget {
  final String title;
  const DailySorohViewBody({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [CustomAppBar(title: title, isBackButtonExists: true)],
    );
  }
}
