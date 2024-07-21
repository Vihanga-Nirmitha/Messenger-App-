import 'package:flutter/material.dart';
import 'package:wechat/auth/login_or_register.dart';
import 'package:wechat/pages/login_page.dart';
import 'package:wechat/pages/register_page.dart';
import 'package:wechat/themes/light_mode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginOrRegister(),
      theme: lightMode,
    );
  }
}
