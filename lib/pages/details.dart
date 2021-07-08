import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:work_out_project/const.dart';
import 'package:work_out_project/widgets/buttons.dart';
import 'package:work_out_project/widgets/richtext_widget.dart';

import 'home.dart';

class detailspage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(414, 896),
      builder: () => SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Container(
                height: 668.w,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/details.png'),
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
                padding:  EdgeInsets.symmetric(horizontal: 30.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20.w),
                     Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 30,
                          width: 114,
                          decoration: BoxDecoration(
                              color: const_project.appColor,
                              borderRadius:
                              BorderRadius.circular(20.w)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.alarm,
                                size: 15.sp,
                                color: const_project.white,
                              ),
                              Text(
                                '   3 hours',
                                style: TextStyle(fontSize: 12.sp,color: const_project.white,),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          iconSize: 30,
                          icon: Icon(
                            Icons.cancel,
                            color: Colors.white,
                          ),
                          onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => homepage()));
                          },
                        )
                      ],
                    ),
                    SizedBox(height:288.w ),
                    Container(
                      height: 52.w,
                      width: 340.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            RichTextWidget('16 ', 'moves      '),
                            RichTextWidget('12 ', 'Sets       '),
                            RichTextWidget('30 ', 'min')
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 28.w),
                    Text('Advance Workout', style: TextStyle(
                      fontFamily: 'Aeonik',
                      fontSize: 30.sp,
                      color: const_project.white,
                    )),
                    SizedBox(height: 50.w),
                    Text('Description',style: TextStyle(
                      fontFamily: 'Aeonik',
                      fontSize: 20.sp,
                      color: const_project.white,
                    )),
                  SizedBox(height: 29.w),
                    Text('Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy \n eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam \n Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy \n eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam ',
                      style: TextStyle(
                      fontSize:10.sp ,
                      color: const_project.white,
                      fontFamily: 'Aeonik',
                    ),),
                    SizedBox(height: 30.w,),
                    SizedBox(height: 34.w),
                    Column(
                      children: [
                        button(
                         const_project.appColor,'Begin Train for \$5.00',4,homepage()
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        button(
                          const_project.appColor2,'Begin Train Demo',4,homepage()
                        ),
                      ],
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

