import 'package:bulldozer/core/models/shifts_offerts_model.dart';
import 'package:bulldozer/core/utils/constants/color_constant.dart';
import 'package:bulldozer/core/utils/constants/text_style.dart';
import 'package:bulldozer/ui/pages/shifts_offerts_details/shifts_offerts_details_view_model.dart';
import 'package:bulldozer/ui/shared/item_details_shifts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';

class ShiftsOffertsDetailView extends StatelessWidget {
  const ShiftsOffertsDetailView(
      {Key? key, required this.shiftsOffertsModel, required this.index})
      : super(key: key);

  final ShiftsOffertsModel shiftsOffertsModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ShiftsOffertsDetailViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              InkWell(
                onTap: () => model.returnToShiftsOffertsView(),
                child: const CircleAvatar(
                  child: Icon(Icons.arrow_back, color: whiteColor),
                  backgroundColor: blackColor,
                ),
              ),
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 95,
                      width: 110,
                      child: ClipOval(
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset('assets/images/bistro.png',
                            fit: BoxFit.fill),
                      ),
                    ),
                    Text(
                      "${shiftsOffertsModel.data![index].company}",
                      style: ts_black_w400_20,
                    ),
                  ],
                ),
              ),
              16.verticalSpace,
              Text(
                "${DateFormat('EEEE MM MMMM').format(DateTime.tryParse(shiftsOffertsModel.data![index].startAt!) as DateTime)}",
                style: ts_red_w400_14,
              ),
              10.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        // width: 150,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 8),
                          child: Center(
                            child: Text(
                              '${shiftsOffertsModel.data![index].postName}',
                              // overflow: TextOverflow.ellipsis,
                              style: ts_subTitle_w400_12,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13.5),
                          color: backgroundPostNameColor,
                        ),
                      ),
                      10.verticalSpace,
                      Text(
                        "${shiftsOffertsModel.data![index].buyPrice}\$ /H ",
                        style: ts_subTitle_w400_12,
                      ),
                    ],
                  ),
                  Text(
                    "${DateFormat.Hm().format(DateTime.tryParse(shiftsOffertsModel.data![index].startAt!) as DateTime)}  - ${DateFormat.Hm().format(DateTime.tryParse(shiftsOffertsModel.data![index].endAt!) as DateTime)}",
                    style: ts_subTitle_w400_12,
                  ),
                ],
              ),
              16.verticalSpace,
              itemDetailShifts(
                  icon: Icons.location_on_outlined,
                  title: "48 Rue Sous le Fort, Québec, QC 4G9"),
              itemDetailShifts(
                  icon: Icons.monetization_on_outlined,
                  title:
                      "Bonus au travailleur: +${shiftsOffertsModel.data![index].bonus}\$/H"),
              itemDetailShifts(icon: Icons.pause, title: "Pause de 30 minutes"),
              itemDetailShifts(
                  icon: Icons.local_parking_outlined,
                  title: "Stationnement gratuit"),
              itemDetailShifts(
                  icon: Icons.dry_cleaning_outlined,
                  title: "Pantalon noir, chemise noir"),
              20.verticalSpace,
              const Text(
                "Responsable",
                style: ts_subTitle_w400_12,
              ),
              20.verticalSpace,
              const Text(
                "Gregorie Kovlaks",
                style: ts_black_w400_14,
              ),
              120.verticalSpace,
              Container(
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: Center(
                    child: Text(
                      'Postuler',
                      style: ts_white_w400_16,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: backgroundSearchColor,
                ),
              ),
            ]),
          ),
        ),
      ),
      viewModelBuilder: () => ShiftsOffertsDetailViewModel(),
    );
  }
}
