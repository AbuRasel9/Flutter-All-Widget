import 'package:flutter/material.dart';

class SliverAppBarWidget extends StatefulWidget {
  const SliverAppBarWidget({super.key});

  @override
  State<SliverAppBarWidget> createState() => _SliverAppBarWidgetState();
}

class _SliverAppBarWidgetState extends State<SliverAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(


          headerSliverBuilder: (BuildContext context, bool innerBoxScroll) {
            return [
              SliverAppBar(
                stretch: true,
                //jokhon kno list thakbe list niche theke opore otanor porei appbar ta dekhabe
                floating: false,
                pinned: true,
                // forceElevated: true,

                expandedHeight: 200,
                title: Text("Sliver Appbar"),
                titleSpacing: 40,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.parallax,
                  stretchModes:  <StretchMode>[StretchMode. zoomBackground],

                  background: Image.network(
                    "https://www.shutterstock.com/image-illustration/angry-bird-charecter-illustration-white-600nw-2108303786.jpg",
                    height: 100,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ];
          },
          body: Center(
            child: ListView.builder(
                itemCount: 500,
                itemBuilder: (context,index){
              return Text("Sliver Appbar $index");
            }),
          )),
    );
  }
}
