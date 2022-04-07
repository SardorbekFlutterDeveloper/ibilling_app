import 'package:flutter/material.dart';
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
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list_alt,
            ),
            label: "Contracts",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.access_time,
            ),
            label: "History",
          ),
          
           BottomNavigationBarItem(
            icon: Icon(
              Icons.add_box_outlined,
            ),
            label: "New",
          ),
           BottomNavigationBarItem(
            icon: Icon(
              Icons.square,
            ),
            label: "Saved",
          ),
           BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline
            ),
            label: "Profile",
          ),
          
        ],
        currentIndex: selectedIndex,
        onTap: _onItemTapped,

      ),
    );
  }
}
