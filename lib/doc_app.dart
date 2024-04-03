import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:bloc_app/core/routing/routes.dart';
import 'package:bloc_app/core/routing/app_router.dart';

import 'package:bloc_app/core/theming/colors_manager.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;

  const DocApp({
    super.key,
    required this.appRouter,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'DOC App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: ColorsManager.mainBlue,
          scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute: Routes.onBoardingScreen,
        onGenerateRoute: appRouter.onGenerateRoute,
      ),
    );
  }
}
