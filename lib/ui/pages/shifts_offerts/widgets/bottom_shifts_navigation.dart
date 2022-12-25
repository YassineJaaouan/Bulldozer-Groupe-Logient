import 'package:bulldozer/core/utils/constants/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomShiftsNavigation extends StatelessWidget {
  const BottomShiftsNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 8),
        child: SizedBox(
          width: 140.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 40),
                  child: Center(
                    child: Row(
                      children: [
                        const Icon(Icons.search, color: whiteColor, size: 30),
                        10.verticalSpace,
                        const Text(
                          'ShiftsOfferts',
                          style: TextStyle(color: whiteColor),
                        ),
                      ],
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: backgroundSearchColor,
                ),
              ),
              const CircleAvatar(
                child: Icon(
                  Icons.file_copy_outlined,
                  color: blackColor,
                ),
                backgroundColor: backgroundPostNameColor,
              ),
              const CircleAvatar(
                child: Icon(Icons.person_outline_outlined, color: blackColor),
                backgroundColor: backgroundPostNameColor,
              )
            ],
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: whiteColor,
      ),
    );
  }
}
