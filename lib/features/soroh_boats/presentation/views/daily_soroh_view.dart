import 'package:flutter/material.dart';
import 'package:navigaty/features/soroh_boats/presentation/views/widgets/daily_soroh_view_body.dart';

class DailySorohView extends StatelessWidget {
  final String title;
  const DailySorohView({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DailySorohViewBody(title: title),
    );
  }
}
