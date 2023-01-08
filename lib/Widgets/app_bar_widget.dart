import 'package:ibilling/core/files_path.dart';

class AppBarW {
  static AppBar appBar(String title) {
    return AppBar(
      leading: Image.asset(ImageConst.instance.profile),
      title: Text(
        title,
        style: FontStyleConst.instance.appBar,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(ImageConst.instance.settingsIcon),
          splashRadius: SizeConst.instance.rExtraLarge,
        ),
        SvgPicture.asset(ImageConst.instance.vLine),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(ImageConst.instance.searchIcon),
        ),
      ],
    );
  }

  static AppBar simpleAppBar(String title) {
    return AppBar(
      leading: Image.asset(ImageConst.instance.profile),
      title: Text(
        title,
        style: FontStyleConst.instance.appBar,
      ),
    );
  }
}
