import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ibilling/core/constants/constants.dart';
import 'package:ibilling/Widgets/size_config.dart';

import 'package:ibilling/views/contracts.dart.dart';
import 'package:ibilling/views/cubit_hisview.dart';
import 'package:ibilling/views/cubit_newview.dart';
import 'package:ibilling/views/cubit_profstate.dart';
import 'package:ibilling/views/cubit_savview.dart';

class BottomPage extends StatefulWidget {
  BottomPage({Key? key}) : super(key: key);

  @override
  State<BottomPage> createState() => _ContractsPaageState();
}

class _ContractsPaageState extends State<BottomPage> {
  int selectedIndex = 0;
  static List _pages = [
    ContractsPage(),
    HistoryPage(),
    NewPage(),
    SavedPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: _pages.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            backgroundColor: Contsants.bottomnavbarcolor,
            icon: Container(
              width: getWidth(18),
              height: getHeight(20),
              child: selectedIndex == 0
                  ? SvgPicture.asset(
                      "assets/icons/bottom/contrac_light.svg",
                      color: Colors.white,
                    )
                  : SvgPicture.asset("assets/icons/bottom/contrac_dark.svg"),
            ),
            label: "Contracts",
          ),
          BottomNavigationBarItem(
            backgroundColor: Contsants.bottomnavbarcolor,
            icon: Container(
              width: getWidth(18),
              height: getHeight(20),
              child: selectedIndex == 1
                  ? SvgPicture.asset(
                      "assets/icons/bottom/history_light.svg",
                      color: Colors.white,
                    )
                  : SvgPicture.asset(
                      "assets/icons/bottom/history_dark.svg",
                      color: Colors.white,
                    ),
            ),
            label: "History",
          ),
          BottomNavigationBarItem(
            backgroundColor: Contsants.bottomnavbarcolor,
            icon: Container(
              width: getWidth(18),
              height: getHeight(20),
              child: selectedIndex == 2
                  ? SvgPicture.asset(
                      "assets/icons/bottom/new_light.svg",
                      color: Colors.white,
                    )
                  : SvgPicture.asset(
                      "assets/icons/bottom/new_dark.svg",
                      color: Colors.white,
                    ),
            ),
            label: "New",
          ),
          BottomNavigationBarItem(
            backgroundColor: Contsants.bottomnavbarcolor,
            icon: Container(
              width: getWidth(18),
              height: getHeight(20),
              child: selectedIndex == 3
                  ? SvgPicture.asset(
                      "assets/icons/bottom/saved_light.svg",
                      color: Colors.white,
                    )
                  : SvgPicture.asset(
                      "assets/icons/bottom/saved_dark.svg",
                      color: Colors.white,
                    ),
            ),
            label: "Saved",
          ),
          BottomNavigationBarItem(
            backgroundColor: Contsants.bottomnavbarcolor,
            icon: Container(
              width: getWidth(18),
              height: getHeight(20),
              child: selectedIndex == 4
                  ? SvgPicture.asset(
                      "assets/icons/bottom/profile_light.svg",
                      color: Colors.white,
                    )
                  : SvgPicture.asset(
                      "assets/icons/bottom/profile_dark.svg",
                      color: Colors.white,
                    ),
            ),
            label: "Profile",
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        selectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(color: Colors.white),
        onTap: _onItemTapped,
      ),
    );
  }
}
