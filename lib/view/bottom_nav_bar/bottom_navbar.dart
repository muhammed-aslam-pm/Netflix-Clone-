import 'package:flutter/material.dart';
import 'package:netflix/database/database.dart';
import 'package:netflix/utils/color_constant/color_constant.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  void onItemTap(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryBlack,
      body: Database.pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: onItemTap,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: ColorConstant.greyTextColor,
        selectedItemColor: ColorConstant.PrimaryTextColor,
        backgroundColor: ColorConstant.primaryGrey,
        selectedLabelStyle: const TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w500,
        ),
        showUnselectedLabels: true,
        selectedIconTheme: const IconThemeData(size: 28),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            backgroundColor: ColorConstant.primaryGrey,
            icon: const Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.video_library_outlined),
            label: "Comin Soon",
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.download),
            label: "Downloads",
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.more_vert_outlined),
            label: "More",
          ),
        ],
      ),
    );
  }
}
