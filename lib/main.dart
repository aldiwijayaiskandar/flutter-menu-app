import 'package:flutter/material.dart';
import 'package:test_saham_rakyat/config/envs/env.dart';
import 'package:test_saham_rakyat/config/routes/routes.dart';
import 'package:test_saham_rakyat/config/theme/app_theme.dart';
import 'package:test_saham_rakyat/contants/routes_constant.dart';

void main() async {
  await Envrionment.load();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.light,
      initialRoute: RoutesConstant.home,
      onGenerateRoute: AppRoutes.onGenerateRoutes,
    );
  }
}
