
import 'package:flutter/material.dart';
import 'package:islami/chapterDetails/chapter_details.dart';

class VerseContent extends StatelessWidget {
  final String content;
  int index;

  VerseContent(this.content,this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

      },
      child: Text(
       '$content{${index+1}}',
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 25,
        ),
      ),
    );
  }
}
