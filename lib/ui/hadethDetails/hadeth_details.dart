

import 'package:flutter/material.dart';
import 'package:islami/ui/home/hadeth/hadeth_tab.dart';
import 'package:islami/ui/theme/DefaultScreen.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = "hadeth_details";
  const HadethDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Hadeth hadeth = ModalRoute.of(context)?.settings.arguments as Hadeth;

    return DefaultScreen(
      body: Scaffold(
        appBar: AppBar(
          title: Text(hadeth.title),
        ),
        body: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          elevation: 24,
          margin: EdgeInsets.symmetric(vertical: 64, horizontal: 24),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Text(
                      hadeth.content,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
