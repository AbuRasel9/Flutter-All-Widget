import 'package:flutter/material.dart';

class ReOrderAbleListViewWidget extends StatefulWidget {
  const ReOrderAbleListViewWidget({super.key});

  @override
  State<ReOrderAbleListViewWidget> createState() => _ReOrderAbleListViewWidgetState();
}

class _ReOrderAbleListViewWidgetState extends State<ReOrderAbleListViewWidget> {
  List<String>_countryList=["Banglades","India","Pakistan","Afganistan","Nepal","Russia"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Re OrderAble List"),
      ),
      body:ReorderableListView.builder(
          itemBuilder: (context,index){
        return Card(
          key: ValueKey(_countryList[index]),

          child: ListTile(
            title: Text(_countryList[index]),
          ),
        );

      }, itemCount: _countryList.length, onReorder: (oldIndex, newIndex){
        print("----$newIndex");
        setState(() {
          if(newIndex>oldIndex){
            newIndex=newIndex-1;
          }
          final element=_countryList.removeAt(oldIndex);
          _countryList.insert(newIndex, element);
        },);


      }) ,
    );
  }
}
