import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

SizedBox baseSizedBox() {
  return const SizedBox(
    height: 20,
  );
}

TextStyle baseTextStyle(
    [FontWeight? fontWeight, Color? color, int? fontSize, String? fontFamily]) {
  return TextStyle(
      fontWeight: fontWeight,
      fontFamily: fontFamily ?? 'Poppins',
      fontSize: fontSize?.sp,
      color: color);
}

Decoration containerDecoration = BoxDecoration(
    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
    border: Border.all(color: const Color(0xffD6D6D6)),
    color: Colors.white);
