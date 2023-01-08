import 'package:ibilling/core/files_path.dart';

class RedButtonW extends StatelessWidget {
  final String text;
  final double width, height;
  final VoidCallback voidCallback;
  const RedButtonW({
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
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorConst.instance.kRed.withOpacity(0.23),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(SizeConst.instance.rMaxSmall1),
          ),
        ),
        onPressed: voidCallback,
        child: Text(
          text,
          style: TextStyle(
            color: ColorConst.instance.kRed,
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
