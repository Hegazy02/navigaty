import 'package:flutter/material.dart';
import 'package:navigaty/core/routing/routes.dart';
import 'package:navigaty/features/about/presentation/views/about_view.dart';
import 'package:navigaty/features/boats_in_arish_port/presentation/views/boats_in_arish_port_view.dart';
import 'package:navigaty/features/boats_outside_govern/presentation/views/boats_outside_govern_view.dart';
import 'package:navigaty/features/enzalat/presentation/views/enzalat_view.dart';
import 'package:navigaty/features/home/presentation/views/home_view.dart';
import 'package:navigaty/features/soroh_boats/presentation/views/soroh_boats_view.dart';

class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeView:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case Routes.boatsInArishPortView:
        return MaterialPageRoute(builder: (_) => const BoatsInArishPortView());
      case Routes.sorohBoatsView:
        return MaterialPageRoute(builder: (_) => const SorohBoatsView());
      case Routes.enzalatView:
        return MaterialPageRoute(builder: (_) => const EnzalatView());
      case Routes.boatsOutsideGovernView:
        return MaterialPageRoute(
            builder: (_) => const BoatsOutsideGovernView());
      case Routes.aboutView:
        return MaterialPageRoute(builder: (_) => const AboutView());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text("No route defined for ${settings.name}"),
                  ),
                ));
    }
  }
}
