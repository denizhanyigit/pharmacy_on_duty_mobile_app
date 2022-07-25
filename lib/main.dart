import 'package:flutter/material.dart';
import 'package:pharmacy_on_duty/pages/splashpage/splash-view.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FikirVerse',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.amberAccent.shade400,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
    );
  }
}
