import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:work_out_project/const.dart';
import 'package:work_out_project/widgets/app_title.dart';
import '../widgets/text_widget.dart';
import '../widgets/buttons.dart';
import 'about.dart';
import 'login.dart';

class welcomePage extends StatelessWidget {
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
                          image: AssetImage('assets/images/welcome.png')))),
              Container(color: const_project.appColor2.withOpacity(0.69)),
              Column(
                children: [
                  SizedBox(height: 68.w),
                  app_title(),
                  SizedBox(height: 279.w),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.w),
                    child: Column(
                      children: [
                        Text_Widget(
                            'Welcome',
                            'train and live the new experience of \n exercising at home',
                            50,15),
                        SizedBox(height:100.w ),
                        Column(
                          children: [
                            button(const_project.appColor, 'Try Now',
                                30.w,login_page()),
                            SizedBox(
                              height: 20.w,
                            ),
                            button(
                                const_project.appColor, 'Log in', 30.w,login_page()),
                          ],
                        ),
                        SizedBox(height: 63.w),
                        Center(
                            child: Text(
                          'Change lenguage',
                          style: TextStyle(
                            fontSize: 13.sp,
                            fontFamily: 'Aeonik',
                            color: const_project.appColor,
                          ),
                        ))
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
