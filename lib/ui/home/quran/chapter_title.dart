
import 'package:flutter/material.dart';
import 'package:islami/chapterDetails/chapter_details.dart';

class ChapterTitle extends StatelessWidget {
  final String title;
  int index;

  ChapterTitle(this.title,this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, ChapterDetails.routeName);
        arguments:ChapterDetailsArgs(index,title);
      },
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 25,
        ),
      ),
    );
  }
}
