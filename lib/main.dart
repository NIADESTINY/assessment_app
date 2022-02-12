import 'package:assessment/page/home_page.dart';
import 'package:assessment/utils/constant.dart';
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
      builder: () => MediaQuery(
        data: const MediaQueryData(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'PcariMovie',
          theme: ThemeData(
            primaryColor: colorPrimary,
            unselectedWidgetColor: colorWhite,
          ),
          builder: (context, widget) {
            ScreenUtil.setContext(context);
            return MediaQuery(
              //Setting font does not change with system font size
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: widget!,
            );
          },
          color: colorPrimary,
          initialRoute: '/',
          routes: {
            '/': (context) => const HomePage(),
          },
        ),
      ),
    );
  }
}