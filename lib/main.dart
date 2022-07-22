import 'package:flutter/material.dart';
import 'package:test_saham_rakyat/config/envs/env.dart';
import 'package:test_saham_rakyat/config/routes/routes.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      onGenerateRoute: AppRoutes.onGenerateRoutes,
    );
  }
}
