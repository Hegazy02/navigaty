import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:navigaty/core/routing/app_router.dart';
import 'package:navigaty/core/routing/routes.dart';
import 'package:navigaty/core/theme/colors.dart';
import 'package:navigaty/features/home/presentation/views/home_view.dart';

late double height;

class NavigatyApp extends StatelessWidget {
  const NavigatyApp({super.key});

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.sizeOf(context).height;

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomeView(),
        theme: ThemeData(
            primaryColor: MyColors.primaryColor,
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
              backgroundColor: MyColors.primaryColor,
            ))),
        onGenerateRoute: AppRouter.generateRoute,
        initialRoute: Routes.homeView,
      ),
    );
  }
}
