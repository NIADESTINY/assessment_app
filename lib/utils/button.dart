import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'constant.dart';

class SquareIconButton extends StatelessWidget {
  final Function() onPressed;
  final Color? iconColor, buttonColor;
  final double width;
  final EdgeInsets? margin;
  final IconData icon;
  final double borderRadius;

  const SquareIconButton(
      {Key? key,
      required this.onPressed,
      this.iconColor,
      this.buttonColor,
      this.width = 70,
      this.margin,
      required this.icon,
      this.borderRadius = 10})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: width,
        height: width,
        margin: margin,
        child: Icon(
          icon,
          color: iconColor ?? Colors.white,
        ),
        decoration: BoxDecoration(
          color: buttonColor ?? Colors.white,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
    );
  }
}

class InkWellButton extends StatelessWidget {
  final Function() onPressed;
  final String text;
  final double border;
  final Color? color;
  final double? margin;

  const InkWellButton({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.border,
    this.color,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: margin ?? 0),
      decoration: BoxDecoration(
        color: color ?? colorTertiary,
        borderRadius: BorderRadius.circular(border),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(border),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: Text(
              text,
              style: TextStyle(
                  color: colorWhite,
                  fontWeight: FontWeight.normal,
                  fontSize: 16.sp),
              textAlign: TextAlign.center,
            ),
          ),
          onTap: onPressed,
        ),
      ),
    );
  }
}

class ButtonStyleOne extends StatelessWidget {
  final Function() onPressed;
  final String text;
  final double border;
  const ButtonStyleOne(
      {Key? key,
      required this.onPressed,
      required this.text,
      required this.border})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              colorOrangeBegin,
              colorOrange,
            ]),
        borderRadius: BorderRadius.circular(border),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: colorOrange.withOpacity(0.7),
          borderRadius: BorderRadius.circular(border),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 5.0.h),
            child: Text(
              text,
              style: TextStyle(fontSize: 20.sp,color: colorWhite,fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
          ),
          onTap: onPressed,
        ),
      ),
    );
  }
}
