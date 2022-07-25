import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pharmacy_on_duty/pages/homepage/view/homepage.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) => {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => const HomePage(),
            ),
          ),
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Image.asset('assets/logo.png'),
        ),
      ),
    );
  }
}
