
import 'package:flutter/material.dart';
import 'package:islami/chapterDetails/chapter_details.dart';
import 'package:islami/ui/hadethDetails/hadeth_details.dart';
import 'package:islami/ui/home/home_screen.dart';
import 'package:islami/ui/splash/splash_screen.dart';
import 'package:islami/ui/theme/MyTheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (_) => SplashScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
        ChapterDetails.routeName: (_) => ChapterDetails(),
        HadethDetailsScreen.routeName: (_) =>HadethDetailsScreen(),
      },
      theme: MyThemeData.lightTheme,
    );
  }
}



