import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BuildAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      systemOverlayStyle: const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      title: Text('Nöbetçi Eczane Türkiye Geneli', style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
      backgroundColor: Color.fromARGB(255, 230, 42, 42),
    );
  }
}
