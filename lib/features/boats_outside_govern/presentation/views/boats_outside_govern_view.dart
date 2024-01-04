import 'package:flutter/material.dart';
import 'package:navigaty/features/boats_outside_govern/presentation/views/widgets/boats_outside_govern_view_body.dart';

class BoatsOutsideGovernView extends StatelessWidget {
  const BoatsOutsideGovernView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BoatsOutsideGovernViewBody(title: "مراكب من خارج المحافظة"),
    );
  }
}
