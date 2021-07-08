import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:work_out_project/const.dart';
import 'package:work_out_project/pages/about.dart';
class button extends StatelessWidget {
  String btn_text;
  Color  btn_color;
  double btn_radius;
  Widget page;

  button(this.btn_color,this.btn_text,this.btn_radius,this.page);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 50.w,
        width: 343.w,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => page));
          },
          child: Text(this.btn_text,
            style: TextStyle(
              color: const_project.white,
              fontSize: 20.sp,
              fontFamily: 'Aeonik',
            ),
          ),
          style: ButtonStyle(
            backgroundColor:  MaterialStateProperty.all<Color>(this.btn_color),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(this.btn_radius.w),
              ),
            ),
          ),
        ),
      ),
    );
  }
}