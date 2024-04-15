import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'view/pass_gen_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Colors.white,
          selectionColor: Colors.grey,
          selectionHandleColor: Colors.white,
        ),
      ),
      title: 'Password Generator',
      debugShowCheckedModeBanner: false,
      home: PasswordGenerator(),
    );
  }
}
