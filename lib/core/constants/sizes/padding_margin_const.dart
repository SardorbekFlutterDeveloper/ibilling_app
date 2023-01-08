import 'package:ibilling/core/files_path.dart';

class PaddingMarginConst {
  static final PaddingMarginConst _instance = PaddingMarginConst._init();
  static PaddingMarginConst get instance => _instance;
  PaddingMarginConst._init();

  final EdgeInsets hsMedium = EdgeInsets.symmetric(
    horizontal: SizeConst.instance.wMedium,
  );

  final EdgeInsets vsMedium = EdgeInsets.symmetric(
    horizontal: SizeConst.instance.hMedium,
  );

  final EdgeInsets hsSmall = EdgeInsets.symmetric(
    horizontal: SizeConst.instance.wSmall,
  );

  final EdgeInsets vsSmall = EdgeInsets.symmetric(
    horizontal: SizeConst.instance.hSmall,
  );
  final EdgeInsets allMedium = EdgeInsets.symmetric(
    horizontal: SizeConst.instance.rMedium,
  );
  final EdgeInsets allSmall = EdgeInsets.symmetric(
    horizontal: SizeConst.instance.rSmall,
  );
}
