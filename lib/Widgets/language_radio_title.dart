import 'package:ibilling/core/files_path.dart';
import 'package:easy_localization/easy_localization.dart';

class LanguageRadioTile extends StatelessWidget {
  final String iconName, title, value;
  final Locale language;

  const LanguageRadioTile(
      {Key? key,
      required this.iconName,
      required this.title,
      required this.value,
      required this.language})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      value: value,
      groupValue: context.locale.toString().split("_")[0],
      controlAffinity: ListTileControlAffinity.trailing,
      contentPadding: EdgeInsets.only(
          left: SizeConst.instance.wMaxSmall1,
          right: SizeConst.instance.wExtraLarge),
      secondary: LanguageIcon(
        iconName: iconName,
      ),
      title: Text(
        title,
        style: FontStyleConst.instance.introTextForm,
      ),
      onChanged: (String? v) {
        context.setLocale(language);
      },
    );
  }
}
