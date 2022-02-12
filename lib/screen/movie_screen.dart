import 'package:assessment/item/movie_item.dart';
import 'package:assessment/utils/constant.dart';
import 'package:assessment/utils/widget_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MovieScreen extends StatelessWidget{
  const MovieScreen({Key? key, required this.label}) : super(key: key);

  final String? label;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 30, 30, 30),
      padding: EdgeInsets.all(10.0.r),
      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.only(left: 5.0.w),
            title: Text(
              label ?? 'New Release',
              style: TextStyle(
                fontSize: 14.sp,
                color: colorWhite,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: TextButton(
              onPressed: (){},
              child: Text(
                'View More',
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.yellow,
                  fontWeight: FontWeight.normal,
                ),
              ),
            )
          ),
          Table(
            children: [
              TableRow(
                children: [
                  MovieItem(
                      height: 180.0.h,
                      title: 'Interstellar',
                      genre: 'Fantasy',
                      image: 'asset/mov1.jpg',
                      duration: '1h 24 min',
                      view: '21.3K',
                  ),
                  MovieItem(
                    height: 180.0.h,
                    title: 'Interstellar',
                    genre: 'Fantasy',
                    image: 'asset/mov1.jpg',
                    duration: '1h 24 min',
                    view: '21.3K',
                  ),
                  MovieItem(
                    height: 180.0.h,
                    title: 'Interstellar',
                    genre: 'Fantasy',
                    image: 'asset/mov1.jpg',
                    duration: '1h 24 min',
                    view: '21.3K',
                  ),
                ]
              ),
              TableRow(
                  children: [
                    MovieItem(
                      height: 180.0.h,
                      title: 'Interstellar',
                      genre: 'Fantasy',
                      image: 'asset/mov1.jpg',
                      duration: '1h 24 min',
                      view: '21.3K',
                    ),
                    MovieItem(
                      height: 180.0.h,
                      title: 'Interstellar',
                      genre: 'Fantasy',
                      image: 'asset/mov1.jpg',
                      duration: '1h 24 min',
                      view: '21.3K',
                    ),
                    MovieItem(
                      height: 180.0.h,
                      title: 'Interstellar',
                      genre: 'Fantasy',
                      image: 'asset/mov1.jpg',
                      duration: '1h 24 min',
                      view: '21.3K',
                    ),
                  ]
              ),
            ],
          ),
          addVerticalSpace(20.0.h),
        ],
      ),
    );
  }

}