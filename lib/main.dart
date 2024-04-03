import 'package:bloc_app/core/di/dependency_injection.dart';
import 'package:bloc_app/core/helpers/my_bloc_observer.dart';
import 'package:bloc_app/core/routing/app_router.dart';
import 'package:bloc_app/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  Bloc.observer = MyBlocObserver();
  setupDependencyInjection();
  await ScreenUtil.ensureScreenSize();
  runApp(
    DocApp(appRouter: AppRouter()),
  );
}
