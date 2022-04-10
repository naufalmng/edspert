import 'package:edspert/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../base_ui.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20.0),
            child: Text('Login',
                style: baseTextStyle(FontWeight.bold, Colors.black, 20)),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 0.0),
            child: Center(
              child: Flexible(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    SvgPicture.asset(Assets.images.svg.analysisIsometric,
                        width: 360.w, height: 255.h),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 56.0),
                          child: Text('Selamat Datang',
                              style: baseTextStyle(
                                  FontWeight.bold, Colors.black, 22)),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 5.0, bottom: 120.0),
                          child: Text(
                              'Selamat Datang di Aplikasi Widya Edu\nAplikasi Latihan dan Konsultasi Soal',
                              style: baseTextStyle(FontWeight.bold,
                                  const Color(0xff6A7483), 14)),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: Colors.white,
                            fixedSize: const Size(double.infinity, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: const BorderSide(
                                    color: Colors.blue,
                                    style: BorderStyle.solid,
                                    width: 1))),
                        onPressed: () {},
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 12.0),
                                child:
                                    Image.asset(Assets.images.png.google.path),
                              ),
                              Text(
                                'Login dengan Google',
                                style: baseTextStyle(FontWeight.bold,
                                    Colors.black, 17, "SF Pro Display"),
                              )
                            ]),
                      ),
                    ),
                    baseSizedBox(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: Colors.black,
                            fixedSize: const Size(double.infinity, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        onPressed: () {},
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 12.0),
                                child: SvgPicture.asset(
                                    Assets.images.svg.apple.path),
                              ),
                              Text(
                                "Masuk dengan Apple ID",
                                style: baseTextStyle(FontWeight.w500,
                                    Colors.white, 17, 'SF Pro Display'),
                              ),
                            ]),
                      ),
                    ),
                    baseSizedBox()
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
