import 'package:ibilling/core/files_path.dart';
import 'package:ibilling/views/bottom_nav_bar/bloc/bottom_nav_bar_cubit.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBarCubit, BottomNavBarState>(
        builder: (context, state) {
      return BaseView(
          viewModal: BottomNavBar,
          onPageBuilder: (context, state) {
            return scaffold(context);
          });
    });
  }

  Scaffold scaffold(context) {
    return Scaffold(
      body: context
          .bottomNavBarCTStream.pages[context.bottomNavBarCTStream.currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: context.bottomNavBarCTStream.bottomIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorConst.instance.kDarkest,
        selectedItemColor: ColorConst.instance.kWhite,
        selectedLabelStyle: FontStyleConst.instance.bottomBarAble,
        unselectedItemColor: ColorConst.instance.kDarkGrey,
        unselectedLabelStyle: FontStyleConst.instance.bottomBarDisable,
        items: [
          //! #1
          BottomNavigationBarItem(
            label: "Contracts",
            icon: SvgPicture.asset(
              ImageConst.instance.toSvg("contracts_unselected"),
            ),
            activeIcon: SvgPicture.asset(
              ImageConst.instance.toSvg("contracts_selected"),
            ),
          ),
          //! #2
          BottomNavigationBarItem(
            label: "History",
            icon: SvgPicture.asset(
              ImageConst.instance.toSvg("history_unselected"),
            ),
            activeIcon: SvgPicture.asset(
              ImageConst.instance.toSvg('history_selected'),
            ),
          ),
          //! #3
          BottomNavigationBarItem(
            label: "New",
            icon: SvgPicture.asset(
              ImageConst.instance.toSvg("new_unselected"),
            ),
            activeIcon: SvgPicture.asset("new_selected"),
          ),
          //! #4
          BottomNavigationBarItem(
            label: "Saved",
            icon: SvgPicture.asset(
              ImageConst.instance.toSvg("saved_unselected"),
            ),
            activeIcon: SvgPicture.asset('saved_selected'),
          ),
          //! #5
          BottomNavigationBarItem(
            label: "Profile",
            icon: SvgPicture.asset(
              ImageConst.instance.toSvg("profile_unselected"),
            ),
            activeIcon: SvgPicture.asset(
              ImageConst.instance.toSvg("profile_selected"),
            ),
          ),
        ],
        onTap: (int index) {
          context.bottomNavBarCT.changePage(index, context);
        },
      ),
    );
  }
}
