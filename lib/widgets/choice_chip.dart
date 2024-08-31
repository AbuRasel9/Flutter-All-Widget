// /*single chip use where when user click button than show selected property .when unSelected button than
// color change again click button than button color change
//
//  */
//
//
// import 'package:flutter/material.dart';
//
// class ChoiceChipWidget extends StatefulWidget {
//   const ChoiceChipWidget({super.key});
//
//   @override
//   State<ChoiceChipWidget> createState() => _ChoiceChipWidgetState();
// }
//
// class _ChoiceChipWidgetState extends State<ChoiceChipWidget> {
//   bool _selectItem=false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Choice Chip Widget"),
//         ),
//         body: Center(
//             child: ChoiceChip(
//
//               selectedColor: Colors.green,
//               disabledColor: Colors.black12,
//               // pressElevation: 2.3,
//                 label: Text("chice chip examle"),
//                 selected: _selectItem,
//                 onSelected: ( select) {
//                   setState(() {
//                     print("---------$select");
//                     _selectItem=select;
//                     print("-------------$_selectItem");
//
//
//                   });
//
//                 })),
//     );
//   }
// }

/*
  create chip user wrap and choice chip use like multiple choice

*/

import 'package:flutter/material.dart';

class ChoiceChipWidget2 extends StatefulWidget {
  const ChoiceChipWidget2({super.key});

  @override
  State<ChoiceChipWidget2> createState() => _ChoiceChipWidget2State();
}

class _ChoiceChipWidget2State extends State<ChoiceChipWidget2> {
  List<String>chipList = ["Bangladesh", "Brazil", "Russia", "England"];
  int? selectItem ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chice Chip"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(

          children: [
            Text("Which Country is Aisan Country Select Country"),
            SizedBox(height: 20,),
            //wrap widget is used for list generate
            Wrap (
              textDirection: TextDirection.ltr,
              verticalDirection: VerticalDirection.down,
              direction: Axis.horizontal,
              spacing: 10,
              alignment:WrapAlignment.center,
              children: List.generate(chipList.length, (int index) {
                return ChoiceChip(
                  selectedColor: Colors.greenAccent,
                  disabledColor: Colors.orange,

                  label: Text(chipList[index]),
                  selected: selectItem == index,
                  onSelected: (bool newSelectValue) {
                  selectItem=(newSelectValue?index:null)!;
                  print("---------------$selectItem");
                  setState(() {

                  });

                  },);
              }),
            ),
          ],
        ),
      ),

    );
  }
}
