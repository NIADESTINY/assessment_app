import 'package:assessment/utils/constant.dart';
import 'package:assessment/utils/widget_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MovieItem extends StatelessWidget {
  const MovieItem(
      {Key? key,
      required this.height,
      required this.title,
      required this.genre,
      required this.image,
      required this.duration,
      required this.view})
      : super(key: key);

  final double height;
  final String title;
  final String genre;
  final String image;
  final String duration;
  final String view;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: EdgeInsets.all(5.0.r),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.grey.withOpacity(0.05),
            Colors.black,
          ],
        ),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Chip(
            backgroundColor: Colors.yellow,
            padding: EdgeInsets.zero,
            elevation: 0,
            labelStyle: TextStyle(
                fontSize: 10.sp,
                color: Colors.black,
                fontWeight: FontWeight.normal
            ),
            label: Text(
              genre,
            ),
          ),
          const Spacer(),
          Container(
            padding: EdgeInsets.all(5.0.r),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.2),
                  Colors.black,
                ],
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.access_time,
                      color: colorWhite,
                      size: 15.0.r,
                    ),
                    addHorizontalSpace(5.0.w),
                    Text(
                      duration,
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: colorWhite,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                addVerticalSpace(5.0.h),
                Row(
                  children: [
                    Icon(
                      Icons.remove_red_eye_outlined,
                      color: colorWhite,
                      size: 15.0.r,
                    ),
                    addHorizontalSpace(5.0.w),
                    Text(
                      view,
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: colorWhite,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                addVerticalSpace(5.0.h),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: colorWhite,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
