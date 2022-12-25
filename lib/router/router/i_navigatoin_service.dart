import 'package:flutter/widgets.dart';

abstract class INavigationService {
  Future pushNamed({required String routeName, Object? data});
  Future pushNamedRemoveUntil({required String routeName, Object? data});
}
