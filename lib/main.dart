import 'package:edspert/ui/auth/login_screen.dart';
import 'package:edspert/ui/auth/register_screen.dart';
import 'package:edspert/ui/home/home_page.dart';
import 'package:edspert/ui/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: () => const MaterialApp(
              debugShowCheckedModeBanner: false,
              home: HomePage(),
            ));
  }
}
