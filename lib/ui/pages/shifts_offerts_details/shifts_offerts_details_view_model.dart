import 'package:bulldozer/core/services/navigation_service.dart';
import 'package:bulldozer/locator.dart';
import 'package:stacked/stacked.dart';

class ShiftsOffertsDetailViewModel extends BaseViewModel{


  final NavigationService _navigationService = locator<NavigationService>();



  /// returnToShiftsOffertsView function is responsible for returning to the
  /// previous view by calling the pop methode from navigation service.
  void returnToShiftsOffertsView() {
    _navigationService.pop();
  }

}