import 'package:flutter/material.dart';
import 'package:navigaty/features/soroh_boats/presentation/views/widgets/yearly_soroh_view_body.dart';

class YearlySorohView extends StatelessWidget {
  final String title;
  const YearlySorohView({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YearlySorohViewBody(
        title: title,
      ),
    );
  }
}
