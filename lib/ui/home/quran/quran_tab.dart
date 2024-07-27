
import 'package:flutter/material.dart';
import 'package:islami/chapterDetails/chapter_details.dart';

// Define MyThemeData if not imported
class MyThemeData {

  static const Color lightPrimary =Color(0xFFB7935F) ; // Replace with your actual color
}

// Define getFullPathImage if not imported
String getFullPathImage(String imageName) {
  return 'assets/images/$imageName'; // Adjust the path as necessary
}

// Combined ChapterTitle class
class ChapterTitle extends StatelessWidget {
  final String title;
  final int index;

  ChapterTitle(this.title, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          ChapterDetails.routeName,
          arguments: ChapterDetailsArgs(index, title),
        );
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

class QuranbTab extends StatelessWidget {
  var chapters = [
    "الفاتحه", "البقرة", "آل عمران", "النساء", "المائدة", "الأنعام", "الأعراف", "الأنفال", "التوبة", "يونس", "هود",
    "يوسف", "الرعد", "إبراهيم", "الحجر", "النحل", "الإسراء", "الكهف", "مريم", "طه", "الأنبياء", "الحج", "المؤمنون",
    "النّور", "الفرقان", "الشعراء", "النّمل", "القصص", "العنكبوت", "الرّوم", "لقمان", "السجدة", "الأحزاب", "سبأ",
    "فاطر", "يس", "الصافات", "ص", "الزمر", "غافر", "فصّلت", "الشورى", "الزخرف", "الدّخان", "الجاثية", "الأحقاف",
    "محمد", "الفتح", "الحجرات", "ق", "الذاريات", "الطور", "النجم", "القمر", "الرحمن", "الواقعة", "الحديد", "المجادلة",
    "الحشر", "الممتحنة", "الصف", "الجمعة", "المنافقون", "التغابن", "الطلاق", "التحريم", "الملك", "القلم", "الحاقة", "المعارج",
    "نوح", "الجن", "المزّمّل", "المدّثر", "القيامة", "الإنسان", "المرسلات", "النبأ", "النازعات", "عبس", "التكوير", "الإنفطار",
    "المطفّفين", "الإنشقاق", "البروج", "الطارق", "الأعلى", "الغاشية", "الفجر", "البلد", "الشمس", "الليل", "الضحى", "الشرح",
    "التين", "العلق", "القدر", "البينة", "الزلزلة", "العاديات", "القارعة", "التكاثر", "العصر",
    "الهمزة", "الفيل", "قريش", "الماعون", "الكوثر", "الكافرون", "النصر", "المسد", "الإخلاص", "الفلق", "الناس"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(getFullPathImage('quran_header.png')),
        Container(
          width: double.infinity,
          height: 2,
          color: MyThemeData.lightPrimary,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            'Chapter Name',
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
          child: ListView.separated(
            itemBuilder: (context, index) {
              return ChapterTitle(chapters[index], index);
            },
            itemCount: chapters.length,
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
}




