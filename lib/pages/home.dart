import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:work_out_project/const.dart';
import 'package:work_out_project/data/category.dart';
import 'package:work_out_project/pages/details.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(414, 896),
      builder: () => SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Container(
                height: 448.w,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/ht.png'),
                  ),
                ),
              ),
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/Rectangle.png'),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 31.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 44.w),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: 'Hey, ',
                                style: TextStyle(
                                    fontSize: 25.sp,
                                    color: const_project.appColor,
                                    fontFamily: 'Aeonik',
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: 'Miau',
                                style: TextStyle(
                                    fontSize: 25.sp, fontFamily: 'Aeonik'))
                          ]),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: const_project.appColor, width: 3.w)),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/circle.png'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 206.w),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: 'Find ',
                                style: TextStyle(
                                    fontSize: 26.sp,
                                    color: const_project.appColor,
                                    fontFamily: 'Aeonik',
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: 'your Workout',
                                style: TextStyle(
                                    fontSize: 26.sp,
                                    fontFamily: 'Aeonik',
                                    fontWeight: FontWeight.bold))
                          ]),
                        ),
                        Icon(
                          Icons.filter_alt_outlined,
                          color: const_project.white,
                        )
                      ],
                    ),
                    SizedBox(height: 29.w),
                    Container(
                      height: 46.w,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: const_project.appColor2,
                          borderRadius: BorderRadius.circular(23.sp)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 33.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'SEARCH WORKOUT',
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  fontFamily: 'Aeonik',
                                  color: const_project.white),
                            ),
                            Icon(Icons.search,
                                size: 20.sp, color: const_project.white)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.w,
                    ),
                    Text('Popular Workout',
                        style: TextStyle(
                            fontFamily: 'Aeonik',
                            fontSize: 30.sp,
                            fontWeight: FontWeight.bold,
                            color: const_project.white)),
                    SizedBox(
                      height: 15.w,
                    ),
                    Container(
                      width: double.infinity,
                      height: 200.w,
                      child: ListView.builder(
                          itemCount: catego.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, index) {
                            return Padding(
                              padding:  EdgeInsets.symmetric(
                                  horizontal: 10.w),
                              child: Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => detailspage()));
                                    },
                                    child: Container(
                                      height: 172.w,
                                      width: 142.w,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              catego[index].imagUrl),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8.w,
                                  ),
                                  Text(
                                    catego[index].name,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Aeonik',
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
