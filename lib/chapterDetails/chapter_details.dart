
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:islami/chapterDetails/verse_content.dart';
import '../ui/home/quran/quran_tab.dart';
import '../ui/theme/DefaultScreen.dart';

class ChapterDetails extends StatefulWidget {
  static const String routeName = 'chapter-details';

  const ChapterDetails({super.key});

  @override
  State<ChapterDetails> createState() => _ChapterDetailsState();
}

class _ChapterDetailsState extends State<ChapterDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as ChapterDetailsArgs;
    if (verses.isEmpty) {
      readFileData(args.chapterIndex);
    }

    return DefaultScreen(
      body: Scaffold(
        appBar: AppBar(
          title: Text(args.chapterTitle),
        ),
        body: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          elevation: 24,
          margin: EdgeInsets.symmetric(vertical: 64, horizontal: 24),
          child: verses.isNotEmpty ? ListView.separated(
            itemBuilder: (context, index) {
              //return Padding(
               // padding: const EdgeInsets.all(8.0),
                return VerseContent(verses[index],index);
                 // style: TextStyle(fontSize: 18),
               // ),
            //  );
            },
            itemCount: verses.length,
            separatorBuilder:(context, index) =>
                Container (height: 1,
                    color: MyThemeData.lightPrimary,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 64),
          ),
          )
              : Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }

  void readFileData(int fileIndex) async {
    String fileContent = await rootBundle.loadString("assets/files/${fileIndex + 1}.txt");
    List<String> lines = fileContent.trim().split("\n");
    print(fileContent);
    setState(() {
      verses = lines;
    });
  }
}

class ChapterDetailsArgs {
  final int chapterIndex;
  final String chapterTitle;

  ChapterDetailsArgs(this.chapterIndex, this.chapterTitle);
}

