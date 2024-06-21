
import 'package:flutter/material.dart';
import 'SplashScreen.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.white,
          backgroundColor: Colors.green,
          centerTitle: true,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}