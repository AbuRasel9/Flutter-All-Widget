import 'package:flutter/material.dart';

class WillPopScopeWidget extends StatefulWidget {
  const WillPopScopeWidget({super.key});

  @override
  State<WillPopScopeWidget> createState() => _WillPopScopeWidgetState();
}

class _WillPopScopeWidgetState extends State<WillPopScopeWidget> {

  /*
    willpopScope widget use korle mobile er back button kaj korbe na
    appbar er o back button kaj korbe na

  * */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WillPopScope Widget"),
      ),
      body:Center(
        child: ElevatedButton(onPressed: (){

          Navigator.push(context, MaterialPageRoute(builder: (context)=>NextPage()));
        },child: Text("Go to Next Page"),),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(child:  Scaffold(
      //akahne leading icon a backbutton add korlam
      //navigator pop use koreci jno previous screen a ase
        appBar:   AppBar(
          title: Text("Willpop Scope Widget"),
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back),),
        )   ,
      backgroundColor: Colors.greenAccent,
      body: SafeArea(
        child: Center(child: Text("Back button kaj korbe na mobile er ")),
      ),

    ), onWillPop: ()async{
      return false;
    });
  }
}

