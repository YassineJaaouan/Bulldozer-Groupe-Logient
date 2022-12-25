import 'package:flutter/services.dart';

class ReadLocalJsonFileService {

  /// readJson function is responsible for calling the loadString methode
  /// from rootBundle.
  /// It has a role to retrieve a string from the asset bundle.
  Future<String> readJson()async {
    return await rootBundle.loadString('assets/shifts.json');
  }


}