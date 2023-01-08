import 'package:ibilling/core/files_path.dart';

class GreenButtonW extends StatelessWidget {
  final String text;
  final double width, height;
  final VoidCallback voidCallback;
  const GreenButtonW({
    Key? key,
    required this.text,
    required this.width,
    required this.height,
    required this.voidCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
          onPressed: voidCallback,
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorConst.instance.kDarkGreen.withOpacity(0.23),
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(SizeConst.instance.rMaxSmall1),
            ),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: ColorConst.instance.kDarkGreen,
              fontSize: SizeConst.instance.fRegular,
              fontWeight: FontWeight.w700,
            ),
          )),
    );
  }
}
