import 'package:ibilling/core/files_path.dart';

class IntroButton extends StatelessWidget {
  final String text;
  final VoidCallback? voidCallback;

  const IntroButton({
    Key? key,
    required this.text,
    this.voidCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: Size(327.w, 48.h),
          backgroundColor: ColorConst.instance.kIntro,
          elevation: 0,
        ),
        onPressed: voidCallback,
        child: Text(
          text,
          style: FontStyleConst.instance.introButton,
        ));
  }
}
