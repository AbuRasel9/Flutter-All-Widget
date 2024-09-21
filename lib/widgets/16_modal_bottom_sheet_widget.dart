import 'package:flutter/material.dart';

class ShowModalBottomSheetWidget extends StatefulWidget {
  const ShowModalBottomSheetWidget({super.key});

  @override
  State<ShowModalBottomSheetWidget> createState() => _ShowModalBottomSheetWidgetState();
}

class _ShowModalBottomSheetWidgetState extends State<ShowModalBottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom sheet widget"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: (){

          showModalBottomSheet(
            transitionAnimationController: AnimationController(
              animationBehavior: AnimationBehavior.preserve,
                duration: Duration(seconds: 1,),
                vsync:Navigator.of(context) ),
            clipBehavior: Clip.antiAlias,
            useRootNavigator: true,
            isScrollControlled: true,
            // barrierLabel: "Modal bottom sheet",
            // barrierColor: Colors.red,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              backgroundColor: Colors.greenAccent,
              context: context, builder: (context){
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,

                  children: [
                    Text("This is Modal Bottom shteet"),
                    SizedBox(height: 20,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(onPressed: (){
                          Navigator.pop(context);
                        }, child: Text("Delete")),
                        ElevatedButton(onPressed: (){
                          Navigator.pop(context);

                        }, child: Text("Save")),
                      ],
                    ),
                  ],
                ),
              ),
            );
          });
        }, child: Text("show modal bottom sheet")),
      ),
    );
  }
}
// class bottomSheetWidget extends StatelessWidget {
//   const bottomSheetWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return ();
//   }
// }

