import 'package:bulldozer/core/services/navigation_service.dart';
import 'package:bulldozer/core/services/read_local_json_files_service.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator()  {

  locator.registerLazySingleton<NavigationService>(() => NavigationService());
  locator.registerLazySingleton<ReadLocalJsonFileService>(() => ReadLocalJsonFileService());

}


