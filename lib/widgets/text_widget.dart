import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:work_out_project/const.dart';
class Text_Widget extends StatelessWidget {
  final String bodyTxt;
  final String desc;

  final double sizeBody;
  final double sizeDesc;
  Text_Widget(this.bodyTxt,this.desc,this.sizeBody,this.sizeDesc);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            bodyTxt,
            style:TextStyle(fontSize: sizeBody.sp, fontWeight: FontWeight.bold,color:const_project.white,fontFamily: 'Euclid'),
          ),
          SizedBox(height: 8.w),
          Text(
            desc,
            style: TextStyle(fontFamily: 'Euclid', fontSize: sizeDesc.sp,color:const_project.white ),
          )
        ],
      ),
    );
  }
}

