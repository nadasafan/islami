


import 'package:flutter/material.dart';
import 'package:islami/ui/hadethDetails/hadeth_details.dart';
import 'hadeth_tab.dart';

class HadethTitle extends StatelessWidget {
  final Hadeth hadeth;

  HadethTitle(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          HadethDetailsScreen.routeName,
          arguments: hadeth,
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          hadeth.title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
