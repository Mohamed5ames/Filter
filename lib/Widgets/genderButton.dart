import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GenderButton extends StatefulWidget {
  GenderButton({
    this.buttonColor,
    this.buttonText,
    this.labelColor,
  });
  Color buttonColor;
  final String buttonText;
  Color labelColor;
  @override
  _GenderButtonState createState() => _GenderButtonState();
}

class _GenderButtonState extends State<GenderButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        onPressed: () {
          setState(() {
            if (widget.buttonColor == Color(0xffeeeeee)) {
              widget.buttonColor = Colors.deepOrangeAccent;
              widget.labelColor = Colors.white;
            } else {
              widget.buttonColor = Color(0xffeeeeee);
              widget.labelColor = Colors.black;
            }
          });
        },
        shape: StadiumBorder(),
        color: widget.buttonColor,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 35.h),
          child: Text(
            widget.buttonText,
            style: TextStyle(
              color: widget.labelColor,
              fontWeight: FontWeight.w500,
              fontFamily: 'Segoue',
              fontSize: 45.sp,
            ),
          ),
        ),
      ),
    );
  }
}
