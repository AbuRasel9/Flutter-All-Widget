import 'package:flutter/material.dart';

class PageViewWidget extends StatefulWidget {
  const PageViewWidget({super.key});

  @override
  State<PageViewWidget> createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {

  PageController controller = PageController(initialPage: 0, keepPage: true, /*viewportFraction: 0.8*/);
  var currentPageValue = 0.0;
  double totalCards = 10;

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        currentPageValue = controller.page!;
      });
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Page view"),
          ),
      body: Center(
        child: SizedBox(
          height: 500,
          child: PageView.builder(
            controller: controller,

            onPageChanged: (value){
              print("----------$value");
            },
              itemCount: 3,
              itemBuilder: (context,index){
            return Container(
              margin: EdgeInsets.all(20,),
              decoration: BoxDecoration(
                  color: index==1 || index==2?Colors.greenAccent:Colors.red,
                
                borderRadius: BorderRadius.circular(10)
              ),
              width: 100,
              height: 100,
              child: Center(child: Text("page $index",style: TextStyle(color: Colors.white,fontSize: 30),),),
            );
          }),
        ),
      ),
    );
  }
}
