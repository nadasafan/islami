


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/ui/home/hadeth/hadeth_title.dart';
import '../../theme/DefaultScreen.dart';
import '../../theme/MyTheme.dart';

class HadethTab extends StatefulWidget {
  HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> allHadeth = [];

  @override
  void initState() {
    super.initState();
    readHadethFile();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/hadith_header.png'),
        Container(
          width: double.infinity,
          height: 2,
          color: MyThemeData.lightPrimary,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            'Hadeth Num',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 2,
          color: MyThemeData.lightPrimary,
        ),
        Expanded(
          child: allHadeth.isEmpty
              ? Center(child: CircularProgressIndicator())
              : ListView.separated(
            itemBuilder: (context, index) {
              return HadethTitle(allHadeth[index]);
            },
            itemCount: allHadeth.length,
            separatorBuilder: (context, index) {
              return Container(
                width: double.infinity,
                height: 2,
                margin: EdgeInsets.symmetric(horizontal: 64),
                color: MyThemeData.lightPrimary,
              );
            },
          ),
        ),
      ],
    );
  }

  void readHadethFile() async {
    String fileContent = await rootBundle.loadString('assets/files/ahadeth.txt');
    // parsing
    List<String> separatedAhadeth = fileContent.split("#");
    for (int i = 0; i < separatedAhadeth.length; i++) {
      String singleHadeth = separatedAhadeth[i];
      List<String> lines = singleHadeth.trim().split("\n");
      String title = lines[0];
      lines.removeAt(0);
      String content = lines.join("\n");
      Hadeth h = Hadeth(title, content);
      allHadeth.add(h);
    }
    setState(() {});
  }
}

class Hadeth {
  String title;
  String content;
  Hadeth(this.title, this.content);
}
