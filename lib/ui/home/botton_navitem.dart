
import 'package:flutter/material.dart';
import 'package:islami/ui/theme/MyTheme.dart';
import 'package:islami/ui/ui_utils.dart';

class BottomNavItem extends BottomNavigationBarItem {
  BottomNavItem(String title, String iconPath)
      : super(
    icon: ImageIcon(AssetImage(getFullPathImages(iconPath))),
    label: title,
    backgroundColor: MyThemeData.lightPrimary,
  );
}

