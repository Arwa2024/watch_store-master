import 'package:flutter/material.dart';
import 'package:watch_store/Features/authentication/presentation/views/splash_view.dart';

import 'Features/home_page/presentation/views/home_page_view.dart';

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
      theme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      home: const HomePageView(),
    );
  }
}
