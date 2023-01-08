import '../../core/files_path.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 3),
      () => NavigationService.instance
          .pushNamedRemoveUntil(routeName: NavigationConst.INTRO_VIEW),
    );
    return Scaffold(
      backgroundColor: ColorConst.instance.kWhite,
      body: Center(
        child: Text(
          TextConst.INTRO_TEXT,
          style: FontStyleConst.instance.intro,
        ),
      ),
    );
  }
}
