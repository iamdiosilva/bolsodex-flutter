import 'package:flutter/material.dart';

import 'app.dart';
import 'views/splash_page/splash_page.dart';

void main() async {
  runApp(const SplashPage());

  await Future.delayed(const Duration(milliseconds: 4700));

  runApp(const App());
}
