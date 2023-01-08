import 'package:easy_localization/easy_localization.dart';
import 'package:ibilling/core/files_path.dart';

extension StringLocalization on String {
  String get locale => this.tr();
}
