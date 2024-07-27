
import 'package:flutter/material.dart';
import 'package:islami/ui/home/home_screen.dart';
import 'package:islami/ui/ui_utils.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = "splash";
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // استدعاء التنقل بعد زمن محدد
    Future.delayed(Duration(seconds: 2), () {
      // استخدام المرجع المحفوظ للتنقل
      if (mounted) {
        Navigator.pushReplacementNamed(context, HomeScreen.routeName);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        getFullPathImages("splash.jpg"),
        fit: BoxFit.fill,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
