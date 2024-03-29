import 'package:ibilling/core/files_path.dart';

class GreenButtonWithWhiteTextW extends StatelessWidget {
  final String text;
  final double width, height;
  final VoidCallback voidCallback;
  const GreenButtonWithWhiteTextW({
    Key? key,
    required this.text,
    required this.width,
    required this.height,
    required this.voidCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: width,
        height: height,
        child: ElevatedButton(
          child: Text(
            text,
            style: FontStyleConst.instance.headline1,
          ),
          onPressed: voidCallback,
        ),
      ),
    );
  }
}
