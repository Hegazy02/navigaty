import 'package:flutter/material.dart';
import 'package:navigaty/features/about/presentation/views/widgets/about_view_body.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AboutViewBody(),
    );
  }
}
