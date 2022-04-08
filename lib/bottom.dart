import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ibilling/cubit/contracts/cubit_view.dart';
import 'package:ibilling/cubit/history/cubit_hisview.dart';
import 'package:ibilling/cubit/new/cubit_newview.dart';
import 'package:ibilling/cubit/profile/cubit_profiview.dart';
import 'package:ibilling/cubit/saved/cubit_savview.dart';

class BottomPage extends StatefulWidget {
  BottomPage({Key? key}) : super(key: key);
 
  @override
  State<BottomPage> createState() => _ContractsPaageState();
}

class _ContractsPaageState extends State<BottomPage> {
  int selectedIndex = 0;
   static const List _pages = [
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
    return Scaffold(
      body:  _pages.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Container(
          width: 18,
          height: 20,
          child: selectedIndex == 0 ? SvgPicture.asset('assets/icons/contrac_light.svg') : SvgPicture.asset('assets/icons/contrac_dark.svg')
        ),
            label: "Contracts",
          
          ),
        
          BottomNavigationBarItem(
            icon: Container(
          width: 18,
          height: 20,
          child: selectedIndex == true  ? Image.asset("assets/icons/history_light.png") : Image.asset("assets/icons/history_dark.png")
        ),
            label: "History",
          ),
          
           BottomNavigationBarItem(
            icon: Container(
          width: 18,
          height: 20,
          child: selectedIndex == 2? Image.asset("assets/icons/new_light.png") : Image.asset("assets/icons/new_dark.png")
        ),
            label: "New",
          ),
           BottomNavigationBarItem(
            icon: Container(
          width: 18,
          height: 20,
          child: selectedIndex == 3 ? Image.asset("assets/icons/saved_light.png") : Image.asset("assets/icons/saved_dark.png")
        ),
            label: "Saved",
          ),
           BottomNavigationBarItem(
            icon: Container(
          width: 18,
          height: 20,
          child: selectedIndex == 4 ? Image.asset("assets/icons/profile_light.png") : Image.asset("assets/icons/profile_dark.png")
        ),
            label: "Profile",
          ),
          
        ],
        // selectedItemColor: Colors.white,
        // unselectedItemColor: Colors.white,
        currentIndex: selectedIndex,
        fixedColor: Colors.white,
        onTap: _onItemTapped,

      ),
    );
  }
}
