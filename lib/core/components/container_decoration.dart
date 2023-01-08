import 'package:ibilling/core/files_path.dart';

class DecorationContainer {
  static final DecorationContainer _instance = DecorationContainer._init();
  static DecorationContainer get instance => _instance;
  DecorationContainer._init();

  final BoxDecoration decoration1 = BoxDecoration(
    color: ColorConst.instance.kDark,
    borderRadius: BorderRadius.circular(6.r),
  );

  final BoxDecoration decoration2 = BoxDecoration(
    color: ColorConst.instance.kDark,
    borderRadius: BorderRadius.circular(4.r),
  );

  final BoxDecoration decoration3 = BoxDecoration(
    color: const Color(0xff4E4E4E),
    borderRadius: BorderRadius.circular(4.r),
  );
}
