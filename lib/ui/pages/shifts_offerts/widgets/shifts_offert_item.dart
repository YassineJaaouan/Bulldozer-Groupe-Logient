import 'package:bulldozer/core/models/shifts_offerts_model.dart';
import 'package:bulldozer/core/utils/constants/color_constant.dart';
import 'package:bulldozer/core/utils/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class ShiftsOffertsItem extends StatelessWidget {
  const ShiftsOffertsItem({Key? key,required this.shiftsOffertsModel,required this.index,this.lastMin=false}) : super(key: key);
  final ShiftsOffertsModel shiftsOffertsModel;
  final int index;
  final bool lastMin;

  @override
  Widget build(BuildContext context) {
    return  Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child:  Container(
        height: 95.h,
        width: 1.sw,
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Text("${shiftsOffertsModel.data![index].company}",style:ts_subTitle_w400_18,),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 4.0.h),
              child:  Text("${DateFormat('EEEE MM MMMM').format(DateTime.tryParse(shiftsOffertsModel.data![index].startAt!) as DateTime)}",style:lastMin?ts_red_w400_14: ts_date_w400_14,),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 70.w,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 8),
                        child:  SizedBox(
                          width: 120.w,
                          child: Center(
                            child: Text(
                              '${shiftsOffertsModel.data![index].postName}',
                              overflow: TextOverflow.ellipsis,
                              style: ts_postName_w400_14,
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13.5),
                        color: backgroundPostNameColor,
                      ),
                    ),
                    14.horizontalSpace,
                    Text("${shiftsOffertsModel.data![index].buyPrice}\$ /H "),
                    Text(" + ${shiftsOffertsModel.data![index].bonus}\$ /H",style: ts_bonusColor_w400_14,),

                  ],),
                Text("${DateFormat.Hm().format(DateTime.tryParse(shiftsOffertsModel.data![index].startAt!) as DateTime)} - ${DateFormat.Hm().format(DateTime.tryParse(shiftsOffertsModel.data![index].endAt!) as DateTime)}",style:ts_red_w400_14),
              ],
            )
          ],
        ),
      ),
    );
  }
}
