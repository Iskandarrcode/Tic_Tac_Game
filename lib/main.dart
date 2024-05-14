import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:may14/pages/page_game/input_user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 512),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: TikTak(),
        );
      },
    );
  }
}
