import 'package:bulldozer/core/utils/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget itemDetailShifts({required IconData icon, required String title}) {
  return Padding(
    padding: const EdgeInsets.only(top: 8.0),
    child: Row(
      children: [
        Container(
            decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.black, width: 1.0, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(icon)),
        10.horizontalSpace,
        Text(title,style: ts_black_w400_14,),
      ],
    ),
  );
}
