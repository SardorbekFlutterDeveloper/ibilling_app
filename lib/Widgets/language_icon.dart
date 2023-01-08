import 'package:ibilling/core/files_path.dart';

class LanguageIcon extends StatelessWidget {
  final VoidCallback? onTap;
  final String iconName;

  const LanguageIcon({
    Key? key,
    required this.iconName,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: 60.w,
      padding: EdgeInsets.only(top: SizeConst.instance.hMaxSmall1),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(2.w, 4.h),
            blurRadius: 25.r,
            color: ColorConst.instance.kBlack.withOpacity(0.1),
          ),
        ],
      ),
      child: InkWell(
        onTap: onTap,
        child: SvgPicture.asset(
          iconName,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
