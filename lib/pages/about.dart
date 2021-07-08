import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:work_out_project/const.dart';
import 'package:work_out_project/widgets/app_title.dart';
import 'package:work_out_project/widgets/buttons.dart';
import 'package:work_out_project/widgets/text_widget.dart';

import '../data/levels.dart';
import 'home.dart';

class about_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(414, 896),
      builder: () => SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/about.png'),
                  ),
                ),
              ),
              Container(color: const_project.appColor2.withOpacity(0.69)),
              Column(
                children: [
                  SizedBox(height: 60.w),
                  app_title(),
                  SizedBox(height: 260.w),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.w),
                    child: Column(
                      children: [
                        Text_Widget(
                            'About You',
                            'we want to know more about you, follow the next steps  \n to complete the information',
                            42,12),
                      ],
                    ),
                  ),
                  SizedBox(height: 28.w),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 45.w),
                    child: Container(
                      height: 226.w,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: levels.length,
                        itemBuilder: (BuildContext context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Container(
                              height: 226,
                              width: 195,
                              decoration: BoxDecoration(
                                color: const_project.appColor2,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20.0, top: 30.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "I am",
                                      style: TextStyle(
                                        fontFamily: 'Aeonik',
                                        fontSize: 30.sp,
                                        color: const_project.appColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.w,
                                    ),
                                    Text(
                                      levels[index],
                                      style: TextStyle(
                                        fontFamily: 'Aeonik',
                                        fontSize: 30.sp,
                                        color: const_project.appColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.w,
                                    ),
                                    Text(
                                      "I have never trained",
                                      style: TextStyle(
                                        fontFamily: 'Aeonik',
                                        fontSize: 12.sp,
                                        color: const_project.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),

                  Padding(
                    padding:
                     EdgeInsets.only(right: 33.w, top: 60.w,left: 45.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Skip Intro",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: 'Aeonik',
                            color: Colors.white30,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => homepage()));
                          },
                          child: Container(
                            width: 139.w,
                            height: 39.w,
                            decoration: BoxDecoration(
                              color: const_project.appColor,
                              borderRadius: BorderRadius.circular(4.w),
                            ),
                            child: Center(
                              child: Text(
                                "Next",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontFamily: 'Aeonik',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
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
