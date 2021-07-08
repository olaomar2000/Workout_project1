import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:work_out_project/const.dart';


class app_title extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.w),
          child: RichText(
            text: TextSpan(children: [
              TextSpan(
                text: 'HARD ',
                style: TextStyle(
                    fontSize: 32.sp, fontFamily: 'BebasNeue', letterSpacing: 5.0.sp ),
              ),
              TextSpan(
                text: 'ELEMENT',
                style:  TextStyle(
                    fontSize: 32.sp, fontFamily: 'BebasNeue', letterSpacing: 5.0 ,color: const_project.appColor),
              ),
            ]),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
