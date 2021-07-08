import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:work_out_project/const.dart';
import 'package:work_out_project/pages/about.dart';
import 'package:work_out_project/pages/home.dart';
import 'package:work_out_project/widgets/app_title.dart';
import 'package:work_out_project/widgets/buttons.dart';
import 'package:work_out_project/widgets/text_widget.dart';

class login_page extends StatelessWidget {
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
                    image: AssetImage('assets/images/login.png'),
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
            padding:  EdgeInsets.symmetric(horizontal: 36.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 68.w),
                app_title(),
                SizedBox(height: 117.w),
                Text_Widget(
                    'sign in',
                    'train and live the new experience of  \n exercising at home',
                  50,15),
                SizedBox(height: 60.w),
                Text(
                  "Email",
                  style: TextStyle(color: Color(0xFF707070), fontSize: 14.sp ,fontFamily: 'Aeonik',),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "olashab300@gmail.com",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF707070)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF707070)),
                    ),
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                 SizedBox(height: 17.w),
                Text(
                  "Password",
                  style: TextStyle(color: Color(0xFF707070), fontSize: 14.sp ,fontFamily: 'Aeonik',),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: '***********',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF707070)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF707070)),
                    ),
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 34.w),
                Padding(
                  padding:  EdgeInsets.only(left: 200.w),
                  child: Text('Forgot you password?',
                    style: TextStyle(color: const_project.white,fontSize: 14.sp),
                   ),
                ),
                SizedBox(height: 42.w),
               button(const_project.appColor, 'Login', 4,about_page()),

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
