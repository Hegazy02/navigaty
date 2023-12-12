import 'package:flutter/material.dart';
import 'package:navigaty/features/soroh_boats/presentation/views/widgets/monthly_soroh_view_body.dart';

class MonthlySorohView extends StatelessWidget {
  final String title;
  const MonthlySorohView({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MonthlySorohViewBody(
        title: title,
      ),
    );
  }
}
