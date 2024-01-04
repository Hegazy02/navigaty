import 'package:flutter/material.dart';
import 'package:navigaty/core/routing/routes.dart';
import 'package:navigaty/features/about/presentation/views/about_view.dart';
import 'package:navigaty/features/boats_in_arish_port/presentation/views/boats_in_arish_port_view.dart';
import 'package:navigaty/features/boats_outside_govern/presentation/views/boats_outside_govern_view.dart';
import 'package:navigaty/features/enzalat/presentation/views/enzalat_view.dart';
import 'package:navigaty/features/home/presentation/views/home_view.dart';
import 'package:navigaty/features/soroh_boats/presentation/views/current_soroh_view.dart';
import 'package:navigaty/features/soroh_boats/presentation/views/daily_soroh_view.dart';
import 'package:navigaty/features/soroh_boats/presentation/views/monthly_soroh_view.dart';
import 'package:navigaty/features/soroh_boats/presentation/views/soroh_boats_view.dart';
import 'package:navigaty/features/soroh_boats/presentation/views/yearly_soroh_view.dart';
import 'package:navigaty/features/web_app/web_app_view.dart';

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
      case Routes.currentSoroh:
        return MaterialPageRoute(
            builder: (_) => CurrentSorohView(
                  title: settings.arguments as String,
                ));
      case Routes.dailySoroh:
        return MaterialPageRoute(
            builder: (_) => DailySorohView(
                  title: settings.arguments as String,
                ));
      case Routes.monthlySoroh:
        return MaterialPageRoute(
            builder: (_) => MonthlySorohView(
                  title: settings.arguments as String,
                ));
      case Routes.yearlySoroh:
        return MaterialPageRoute(
            builder: (_) => YearlySorohView(
                  title: settings.arguments as String,
                ));
      case Routes.webApp:
        return MaterialPageRoute(builder: (_) => const WebViewApp());
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
