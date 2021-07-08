import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:work_out_project/const.dart';

class RichTextWidget extends StatelessWidget {
  final String number;
  final String text;
  RichTextWidget(this.number,this.text);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
            text: number,
            style:TextStyle(fontSize: 16,color: const_project.appColor,fontFamily: 'Aeonik')),
        TextSpan(text: text, style: TextStyle(fontSize: 16.sp,fontFamily: 'Aeonik')),
      ]),
    );
  }
}
