import 'package:flutter/material.dart';
import 'package:navigaty/core/widgets/custom_appbar.dart';

class CurrentSorohViewBody extends StatelessWidget {
  final String title;
  const CurrentSorohViewBody({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [CustomAppBar(title: title, isBackButtonExists: true)],
    );
  }
}
