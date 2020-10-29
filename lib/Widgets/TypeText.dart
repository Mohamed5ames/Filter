import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TypeText extends StatelessWidget {
  TypeText({@required this.theText});
  final String theText;
  @override
  Widget build(BuildContext context) {
    return Text(
      theText,
      textAlign: TextAlign.end,
      style: TextStyle(
          fontFamily: 'Seqoue',
          fontSize: 40.sp,
          color: Colors.grey,
          fontWeight: FontWeight.w500),
    );
  }
}
