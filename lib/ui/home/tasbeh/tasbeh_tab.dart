// import 'package:flutter/material.dart';
//
// class TasbehTab extends StatefulWidget {
//   const TasbehTab({super.key});
//
//   @override
//   State<TasbehTab> createState() => _TasbehTabState();
// }
//
// class _TasbehTabState extends State<TasbehTab> {
//   int counter=0;
//   double angle=0;
//   List<String> Azkar = [
//   "سبحان لله",
//   "الحمد لله",
//   "لا اله الا الله",
//   "الله اكبر",
//   ];
//   int index = 0;
//   @override
//
// Widget build (BuildContext context) {
//
//   return Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//   children: [
//   Stack(
//   alignment: Alignment.topCenter,
//       children: [
//       Image.asset("assets/images/head of seb7a.png"),
//   Padding(
//   padding: const EdgeInsets.only(top: 75.0),
//     child: Transform.rotate(
//     angle: angle,
//     child: GestureDetector(
//     onTap: () {
//       OnTab();
//     },
//   child: Image.asset("assets/images/body of seb7a.png")),
//   ),
//     ),
//   ],
//   ),
//   Padding(
//   padding: const EdgeInsets.only(top: 27.0),
//   child: Text("عدد التسبيحات", textAlign : TextAlign.center,),
//   ),
//   Padding(
//   padding: const EdgeInsets.only(top: 26.0),
//   child: Center(
//   child: Container(
//   padding: EdgeInsets.all(12),
//   decoration: BoxDecoration(
//   color: Theme.of(context).primaryColor,
//   borderRadius: BorderRadius.circular(30),
//   ),
//    child: Text("$counter"),
//   ),
//   ),
//   ),
//     Padding(
//       padding: const EdgeInsets.only(top: 26.0),
//       child: Center(
//         child: Container(
//           padding: EdgeInsets.all(12),
//           decoration: BoxDecoration(
//             color: Theme.of(context).primaryColor,
//             borderRadius: BorderRadius.circular(30),
//           ),
//           child: Text("${Azkar[index]}"),
//         ),
//       ),
//     ),
//   ],
//   );
// }
//   OnTap(){
//     counter++;
//     if(counter %33==0){
//       index++;
//       counter++;
//       counter=0;
//     }
//     if(index==Azkar.length){
//       index=0;
//     }
//     angle +=360/4;
//     setState(() {
//     });
//   }
// }





import 'package:flutter/material.dart';
import 'package:islami/ui/theme/MyTheme.dart';

class TasbehTab extends StatefulWidget {
  const TasbehTab({super.key});

  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  int counter = 0;
  double angle = 0;
  List<String> azkar = [
    "سبحان لله",
    "الحمد لله",
    "لا اله الا الله",
    "الله اكبر",
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset("assets/images/head of seb7a.png"),
            Padding(
              padding: const EdgeInsets.only(top: 75.0),
              child: Transform.rotate(
                angle: angle,
                child: GestureDetector(
                  onTap: () {
                    onTap();
                  },
                  child: Image.asset("assets/images/body of seb7a.png"),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 27.0),
          child: Text(
            "عدد التسبيحات",
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 26.0),
          child: Center(
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: MyThemeData.lightPrimary,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                "$counter",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 26.0),
          child: Center(
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: MyThemeData.lightPrimary,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                azkar[index],
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void onTap() {
    setState(() {
      counter++;
      if (counter % 33 == 0) {
        index++;
        counter = 0;
        if (index == azkar.length) {
          index = 0;
        }
      }
      angle += 360 / 4;
    });
  }
}
