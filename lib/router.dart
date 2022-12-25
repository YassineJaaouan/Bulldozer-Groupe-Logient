import 'package:bulldozer/core/utils/constants/routing_constant.dart';
import 'package:bulldozer/ui/pages/shifts_offerts/shifts_offerts_view.dart';
import 'package:bulldozer/ui/pages/shifts_offerts_details/shifts_offerts_details_view.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case shiftsOffertsView:
      return getPageRoute(const ShiftsOffertsView(),
          transitionAnimation: PageTransitionType.fade);
    case shiftsOffertsDetailView:
      return getPageRoute(
          ShiftsOffertsDetailView(
              index: Map.from(
                  settings.arguments as Map<dynamic, dynamic>)['index'],
              shiftsOffertsModel:
                  Map.from(settings.arguments as Map<dynamic, dynamic>)[
                      'shiftsOffertsModel']),
          transitionAnimation: PageTransitionType.fade);
    default:
      return MaterialPageRoute(
          builder: (_) => Scaffold(
                body: Center(
                  child: Text("No route defined for ${settings.name}"),
                ),
              ));
  }
}

getPageRoute(Widget viewToShow,
    {PageTransitionType transitionAnimation = PageTransitionType.rightToLeft,
    dynamic args}) {
  return MaterialPageRoute(builder: (context) {
    return viewToShow;
  });
}
