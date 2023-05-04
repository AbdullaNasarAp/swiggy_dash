import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:swiggy_dash/controller/b_nav.dart';

import '../utils/colors.dart';

class BNavi extends StatelessWidget {
  const BNavi({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<BNav>(
      builder: (context, cHSP, child) {
        return Scaffold(
          body: cHSP.tabs[cHSP.selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: xWhite,
            elevation: 0,
            selectedLabelStyle:
                const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            type: BottomNavigationBarType.fixed,
            selectedItemColor: xBlack87,
            unselectedItemColor: xGrey,
            currentIndex: cHSP.selectedIndex,
            items: const [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/image/swiggy.png")),
                label: "Swiggy",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/image/food.png")),
                label: "Food",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/image/instamart.png")),
                label: "Instamart",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/image/dineout.png")),
                label: "Dineout",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/image/genie.png")),
                label: "Genie",
              ),
            ],
            onTap: (index) {
              cHSP.changeIndex(index);
            },
          ),
        );
      },
    );
  }
}
