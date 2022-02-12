import 'package:assessment/screen/movie_screen.dart';
import 'package:assessment/utils/button.dart';
import 'package:assessment/utils/constant.dart';
import 'package:assessment/utils/widget_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DesignOne(size: size);
  }
}

class DesignOne extends StatelessWidget {
  const DesignOne({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top + 10.0.h,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Colors.black.withOpacity(0.8),
                      Colors.black,
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'PcariMovie',
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: colorWhite,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Expanded(
                          child: TabBar(
                            physics: const BouncingScrollPhysics(),
                            labelPadding:
                                EdgeInsets.symmetric(horizontal: 10.0.r),
                            isScrollable: true,
                            labelColor: colorWhite,
                            indicatorSize: TabBarIndicatorSize.label,
                            indicatorColor: Colors.yellow,
                            labelStyle: TextStyle(
                              fontSize: 12.sp,
                              color: colorWhite,
                              fontWeight: FontWeight.bold,
                            ),
                            tabs: const [
                              Tab(
                                text: 'Home',
                              ),
                              Tab(
                                text: 'Movies',
                              ),
                              Tab(
                                text: 'TV Shows',
                              ),
                              Tab(
                                text: 'Video',
                              ),
                              Tab(
                                text: 'FAQ',
                              ),
                              Tab(
                                text: 'Pricing',
                              ),
                              Tab(
                                text: 'Contact us',
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.search,
                                color: colorWhite,
                                size: 25.0.r,
                              ),
                              splashRadius: 25.0.r,
                            ),
                            CircleAvatar(
                              minRadius: 18.0.r,
                              backgroundColor:
                                  const Color.fromARGB(255, 30, 30, 30),
                            ),
                            addHorizontalSpace(10.0.w),
                            Text(
                              'John Glich',
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: colorWhite,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 10.0.w,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(20.0.r),
                      child: Center(
                        child: ListTile(
                          contentPadding: EdgeInsets.all(10.0.r),
                          leading: Container(
                            decoration: const BoxDecoration(
                              color: Colors.yellow,
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.play_arrow_outlined,
                                color: Colors.black,
                                size: 40.0.r,
                              ),
                              padding: EdgeInsets.zero,
                            ),
                          ),
                          title: Text(
                            'Find your movies here!',
                            style: TextStyle(
                              fontSize: 20.sp,
                              color: colorWhite,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            'Explore our gallery full of exciting films from all around the globe only your yor entertainments. No hidden charges or disturbing ads.',
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: colorWhite,
                              fontWeight: FontWeight.normal,
                              height: 1.5.h,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const MovieScreen(
                label: 'New Releases',
              ),
              Container(
                padding: EdgeInsets.all(10.0.r),
                color: const Color.fromARGB(255, 61, 61, 61),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'PcariMovie',
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: colorWhite,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    addVerticalSpace(10.0.h),
                    Text(
                      'Lorem ipsum dolor sit amet, consec tetur adipis cing elit, sed do eiusmod tempor incididunt ut labore et.'
                      'Lorem ipsum dolor sit amet, consec tetur adipis cing elit, sed do eiusmod tempor incididunt ut labore et.',
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: colorWhite,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    addVerticalSpace(10.0.h),
                    Center(
                      child: Text(
                        'Join Newsletters',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: colorWhite,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    addVerticalSpace(10.0.h),
                    Form(
                      child: TextFormField(
                        cursorColor: colorSecondary,
                        cursorRadius: Radius.circular(10.0.r),
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: colorWhite,
                        ),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 15.0.w),
                            hintText: 'Insert your email here',
                            hintStyle: TextStyle(fontSize: 14.sp, color: Colors.grey),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0.r),
                                borderSide: BorderSide.none),
                            filled: true,
                            fillColor: const Color.fromARGB(255, 82, 82, 82),
                          suffixIcon: SquareIconButton(
                            onPressed: (){},
                            icon: Icons.arrow_forward,
                            borderRadius: 10.0.r,
                            iconColor: Colors.black,
                            buttonColor: Colors.yellow,
                            width: 20.0.r,
                          )
                        ),
                        maxLines: 1,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10.0.r),
                      color: const Color.fromARGB(255, 46, 46, 46),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton(
                                  onPressed: (){},
                                  child: Text(
                                    'Product',
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      color: colorWhite,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                              ),
                              TextButton(
                                onPressed: (){},
                                child: Text(
                                  'Media Group',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: colorWhite,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: (){},
                                child: Text(
                                  'Sitemap',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: colorWhite,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton(
                                onPressed: (){},
                                child: Text(
                                  'Movies',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: colorWhite,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: (){},
                                child: Text(
                                  'Nice Studio',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: colorWhite,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: (){},
                                child: Text(
                                  'About',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: colorWhite,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton(
                                onPressed: (){},
                                child: Text(
                                  'TV Shows',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: colorWhite,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: (){},
                                child: Text(
                                  'Nice News',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: colorWhite,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: (){},
                                child: Text(
                                  'Careers',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: colorWhite,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton(
                                onPressed: (){},
                                child: Text(
                                  'Videos',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: colorWhite,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: (){},
                                child: Text(
                                  'Nice TV',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: colorWhite,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: (){},
                                child: Text(
                                  'Press',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: colorWhite,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          ListTile(
                            horizontalTitleGap: 0,
                            leading: Icon(
                              Icons.location_on,
                              color: colorWhite,
                              size: 20.0.r,
                            ),
                            title: Text(
                              '8819 Ohio St. South Gate, California 90280',
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: colorWhite,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          ListTile(
                            horizontalTitleGap: 0,
                            leading: Icon(
                              Icons.email,
                              color: colorWhite,
                              size: 20.0.r,
                            ),
                            title: Text(
                              'ourstudio@hello.com',
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: colorWhite,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          ListTile(
                            horizontalTitleGap: 0,
                            leading: Icon(
                              Icons.local_phone,
                              color: colorWhite,
                              size: 20.0.r,
                            ),
                            title: Text(
                              '+271 386-647-3637',
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: colorWhite,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DesignTwo extends StatelessWidget {
  const DesignTwo({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Colors.black.withOpacity(0.8),
                      Colors.black,
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'PcariMovie',
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: colorWhite,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Expanded(
                          flex: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.search,
                                  color: colorWhite,
                                  size: 25.0.r,
                                ),
                                splashRadius: 20.0.r,
                              ),
                              CircleAvatar(
                                minRadius: 18.0.r,
                                backgroundColor:
                                    const Color.fromARGB(255, 30, 30, 30),
                              ),
                              Text(
                                'John Glich',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: colorWhite,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    TabBar(
                      physics: const BouncingScrollPhysics(),
                      labelPadding: EdgeInsets.symmetric(horizontal: 10.0.r),
                      isScrollable: true,
                      labelColor: colorWhite,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorColor: Colors.yellow,
                      labelStyle: TextStyle(
                        fontSize: 12.sp,
                        color: colorWhite,
                        fontWeight: FontWeight.bold,
                      ),
                      tabs: const [
                        Tab(
                          text: 'Home',
                        ),
                        Tab(
                          text: 'Movies',
                        ),
                        Tab(
                          text: 'TV Shows',
                        ),
                        Tab(
                          text: 'Video',
                        ),
                        Tab(
                          text: 'FAQ',
                        ),
                        Tab(
                          text: 'Pricing',
                        ),
                        Tab(
                          text: 'Contact us',
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(20.0.r),
                      child: Center(
                        child: ListTile(
                          contentPadding: EdgeInsets.all(10.0.r),
                          leading: Container(
                            decoration: const BoxDecoration(
                              color: Colors.yellow,
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.play_arrow_outlined,
                                color: Colors.black,
                                size: 40.0.r,
                              ),
                              padding: EdgeInsets.zero,
                            ),
                          ),
                          title: Text(
                            'Find your movies here!',
                            style: TextStyle(
                              fontSize: 20.sp,
                              color: colorWhite,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            'Explore our gallery full of exciting films from all around the globe only your yor entertainments. No hidden charges or disturbing ads.',
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: colorWhite,
                              fontWeight: FontWeight.normal,
                              height: 1.5.h,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const MovieScreen(
                label: 'New Release',
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: const Color.fromARGB(255, 61, 61, 61),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'PcariMovie',
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: colorWhite,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: const Color.fromARGB(255, 46, 46, 46),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'PcariMovie',
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: colorWhite,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
