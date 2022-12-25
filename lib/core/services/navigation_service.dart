import 'package:flutter/material.dart';

class NavigationService {
  final GlobalKey<NavigatorState> _navigationKey = GlobalKey<NavigatorState>();

  GlobalKey<NavigatorState> get navigationKey => _navigationKey;

  final GlobalKey<NavigatorState> _commentsNavigationKey = GlobalKey<NavigatorState>();

  GlobalKey<NavigatorState> get commentsNavigationKey => _commentsNavigationKey;


  /// pop function is responsible for calling the pop methode
  /// His role is to pop the top-most route off the navigator.
  /// It take a non required dynamic [args] parameter
  void pop({dynamic args}) {
    _navigationKey.currentState!.pop(args);
  }

  /// navigateTo function is responsible for calling the pushNamed methode
  /// His role is to push a named route onto the navigator.
  /// It takes a required String [routeName] and a non required dynamic [args]
  /// arguments as a parameters.
  Future<dynamic> navigateTo(String routeName, {dynamic arguments}) {
    return _navigationKey.currentState!.pushNamed(routeName, arguments: arguments);
  }


}