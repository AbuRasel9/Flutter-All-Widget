import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget/apiCall/animal_app/bloc/animal_data_bloc.dart';

import 'animal_app/bloc/animal_data_event.dart';

class AnimalDetailsScreen extends StatefulWidget {
  const AnimalDetailsScreen({super.key});

  @override
  State<AnimalDetailsScreen> createState() => _AnimalDetailsScreenState();
}

class _AnimalDetailsScreenState extends State<AnimalDetailsScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<AnimalDataBloc>().add(AnimalListEvent());


    },);
    print("-----------------ddd------animal list ${jsonEncode(context.read<AnimalDataBloc>().state.animalList)}");

  }

  @override
  Widget build(BuildContext context) {
    print("-----------------------animal list ${jsonEncode(context.read<AnimalDataBloc>().state.animalList.birds)}");

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Animal Details Screen",style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text("Select Animal",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

          ],
        ),
      ),
    );
  }
}
