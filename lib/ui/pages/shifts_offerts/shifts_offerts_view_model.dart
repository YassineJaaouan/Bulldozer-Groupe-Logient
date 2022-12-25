import 'dart:convert';
import 'package:bulldozer/core/models/shifts_offerts_model.dart';
import 'package:bulldozer/core/services/navigation_service.dart';
import 'package:bulldozer/core/services/read_local_json_files_service.dart';
import 'package:bulldozer/core/utils/constants/routing_constant.dart';
import 'package:bulldozer/locator.dart';
import 'package:stacked/stacked.dart';

class ShiftsOffertsViewModel extends BaseViewModel {
  final ReadLocalJsonFileService _jsonFileService =
      locator<ReadLocalJsonFileService>();
  final NavigationService _navigationService = locator<NavigationService>();

  ShiftsOffertsModel shiftsOffertsModel=ShiftsOffertsModel();

  /// init function is responsible for the initialization the view and calling
  /// the getShiftsOffertsData methode.
  void init() {
    getShiftsOffertsData();
  }

  /// getShiftsOffertsData function is responsible for :
  /// calling readJson methode from _jsonFileService to get the json file
  /// decode the file by calling the json.decode() methode
  /// parsing the data by calling the fromJson methode from ShiftsOffertsModel
  /// and set the variable isBusy to true to display the data after showing a
  /// Skeleton.
  Future<void> getShiftsOffertsData() async {
    String _response = await _jsonFileService.readJson();
    final data = await json.decode(_response);
    shiftsOffertsModel = ShiftsOffertsModel.fromJson(data);
    setBusy(true);
  }

  /// navigateToShiftsOffertsDetailView function is responsible for calling the
  /// navigateTo methode from _navigationService.
  /// It take as a parameter int [index].
  void navigateToShiftsOffertsDetailView(int index) {
    _navigationService.navigateTo(shiftsOffertsDetailView,
        arguments: {'index': index,'shiftsOffertsModel':shiftsOffertsModel});
  }
}
