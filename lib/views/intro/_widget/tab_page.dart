import '../../../core/files_path.dart';

class TabPage extends StatelessWidget {
  final String imageName, title, subTitle;

  const TabPage({
    Key? key,
    required this.imageName,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          SizedBox(
            height: 224.h,
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    width: 327.w,
                    height: 150.h,
                    decoration: BoxDecoration(
                      color: ColorConst.instance.kIntroGrey,
                      borderRadius:
                          BorderRadius.circular(SizeConst.instance.rSmall),
                    ),
                  ),
                ),
                Positioned(
                  child: Image.asset(imageName),
                  width: 327.w,
                  height: 206.h,
                ),
              ],
            ),
          ),
          SizedBox(height: 28.h),
          Text(
            title,
            style: FontStyleConst.instance.introTitle,
          ),
          SizedBox(height: SizeConst.instance.hMaxSmall2),
          Text(
            subTitle,
            textAlign: TextAlign.center,
            style: FontStyleConst.instance.introBody,
          ),
        ],
      ),
    );
  }
}
