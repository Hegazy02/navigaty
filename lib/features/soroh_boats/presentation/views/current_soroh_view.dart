import 'package:flutter/material.dart';
import 'package:navigaty/features/soroh_boats/presentation/views/widgets/current_soroh_view_body.dart';

class CurrentSorohView extends StatelessWidget {
  final String title;
  const CurrentSorohView({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CurrentSorohViewBody(title: title),
    );
  }
}
