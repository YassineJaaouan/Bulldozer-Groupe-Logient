import 'package:bulldozer/core/utils/constants/color_constant.dart';
import 'package:bulldozer/core/utils/constants/text_style.dart';
import 'package:bulldozer/ui/pages/shifts_offerts/shifts_offerts_view_model.dart';
import 'package:bulldozer/ui/pages/shifts_offerts/widgets/bottom_shifts_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'widgets/shifts_offert_item.dart';

class ShiftsOffertsView extends StatefulWidget {
  const ShiftsOffertsView({Key? key}) : super(key: key);

  @override
  State<ShiftsOffertsView> createState() => _ShiftsOffertsViewState();
}

class _ShiftsOffertsViewState extends State<ShiftsOffertsView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ShiftsOffertsViewModel>.reactive(
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: model.isBusy
              ? Padding(
                  padding:
                      const EdgeInsets.only(right: 16.0, left: 16.0, top: 32),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Shifts Offerts",
                          style: ts_black_w400_24,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 26.0, bottom: 8),
                          child: Text(
                            "Dernière minute",
                            style: ts_subTitle_w400_12,
                          ),
                        ),
                        SizedBox(
                          height: 200.h,
                          child: ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () => model
                                      .navigateToShiftsOffertsDetailView(index),
                                  child: ShiftsOffertsItem(
                                    shiftsOffertsModel:
                                        model.shiftsOffertsModel,
                                    index: index,
                                    lastMin: true,
                                  ),
                                );
                              }),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 16.0, bottom: 8),
                          child: Text("Shifts à venir",
                              style: ts_subTitle_w400_12),
                        ),
                        SizedBox(
                          height: 270.h,
                          child: ListView.builder(
                              itemCount: model.shiftsOffertsModel.data!.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                    onTap: () =>
                                        model.navigateToShiftsOffertsDetailView(
                                            index),
                                    child: ShiftsOffertsItem(
                                      shiftsOffertsModel:
                                          model.shiftsOffertsModel,
                                      index: index,
                                    ));
                              }),
                        ),
                        14.verticalSpace,
                        const BottomShiftsNavigation(),
                        16.verticalSpace,
                      ],
                    ),
                  ),
                )
              : SizedBox(),
          ///TODO:it can be a Skeleton widget instead of a SizedBox
        ),
      ),
      viewModelBuilder: () => ShiftsOffertsViewModel(),
    );
  }
}
