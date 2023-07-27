import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import './Route/routes.dart';
import './Route/application.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final router = FluroRouter();
    Routes.configureRotes(router);
    Application.router = router;
    return MaterialApp(
      title: 'Learing Master Background',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Application.router!.generator,
      onGenerateInitialRoutes: (d) {
        return Application.router!.generatorInitail('/ConbinationPage');
      },
    );
  }
}
