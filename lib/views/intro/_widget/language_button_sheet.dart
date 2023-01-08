import 'package:ibilling/core/files_path.dart';

class LanguageModalSheet {
  static final LanguageModalSheet _instance = LanguageModalSheet._init();
  static LanguageModalSheet get instance => _instance;
  LanguageModalSheet._init();

  Future changeLang(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(SizeConst.instance.rMedium),
        ),
      ),
      builder: (context) {
        return SafeArea(
          top: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: SizeConst.instance.hExtraLarge,
              ),
              Padding(
                padding: EdgeInsets.only(left: 24.w),
                child: Text(
                  "Choose a language",
                  style: FontStyleConst.instance.introTitle,
                ),
              ),
              SizedBox(
                height: SizeConst.instance.hExtraLarge,
              ),
              LanguageRadioTile(
                iconName: ImageConst.instance.langEng,
                language: LanguageManager.instance.enLocale,
                title: "English",
                value: "en",
              ),
              LanguageRadioTile(
                iconName: ImageConst.instance.langRus,
                title: "Русский",
                value: "ru",
                language: LanguageManager.instance.ruLocale,
              ),
              LanguageRadioTile(
                iconName: ImageConst.instance.langUzb,
                title: "O‘zbek",
                value: "uz",
                language: LanguageManager.instance.uzLocale,
              ),
            ],
          ),
        );
      },
    );
  }
}
