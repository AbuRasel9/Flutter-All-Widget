import 'package:flutter/material.dart';

class DropDownButtonWidget extends StatefulWidget {
  const DropDownButtonWidget({super.key});

  @override
  State<DropDownButtonWidget> createState() => _DropDownButtonWidgetState();
}

class _DropDownButtonWidgetState extends State<DropDownButtonWidget> {
  String? selectedFruits;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dropdown button Widget"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DropdownButtonFormField<String>(
              selectedItemBuilder: (context) {
                return fruits.map((e) {
                  return Row(
                    children: [
                        const Icon(Icons.check_circle,color: Colors.green,)  ,
                      const SizedBox(width: 8,),
                      Text(e,style: const TextStyle(fontSize: 14,fontWeight: FontWeight.bold,),)
                    ],
                  );
                },).toList();
              },
              menuMaxHeight: 300,
              iconDisabledColor: Colors.grey.withOpacity(.5 ),
              iconEnabledColor: Colors.green,
              decoration: const InputDecoration(
                hintText: "Select Fruit",
                border: OutlineInputBorder(
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 5)
              ),
              icon:const Icon(Icons.arrow_drop_down_circle),
              borderRadius: BorderRadius.circular(10),
              value: selectedFruits,
              items: fruits
                  .map(
                    (String value) => DropdownMenuItem<String>(
                        value: value, child: Text(value)),
                  )
                  .toList(),
              onChanged: (value) {
                selectedFruits = value;
                setState(() {});
              },
              isExpanded: true,
            ),
            const SizedBox(
              height: 30,
            ),
            RichText(
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              text: TextSpan(text: "rasel", children: [
                const TextSpan(
                  text: "Fruits name ",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.black),
                ),
                TextSpan(
                  text: selectedFruits,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }

  List<String> fruits = [
    "Apple",
    "Banana",
    "Mango",
    "Orange",
    "Pineapple",
    "Strawberry",
    "Blueberry",
    "Raspberry",
    "Blackberry",
    "Watermelon",
    "Cantaloupe",
    "Honeydew",
    "Papaya",
    "Guava",
    "Kiwi",
    "Lemon",
    "Lime",
    "Cherry",
    "Peach",
    "Plum",
    "Apricot",
    "Nectarine",
    "Grapefruit",
    "Pomegranate",
    "Dragonfruit",
    "Passionfruit",
    "Lychee",
    "Starfruit",
    "Tangerine",
    "Clementine",
    "Cranberry",
    "Mulberry",
    "Gooseberry",
    "Elderberry",
    "Date",
    "Fig",
    "Persimmon",
    "Sapodilla",
    "Jackfruit",
    "Durian",
    "Longan",
    "Mangosteen",
    "Soursop",
    "Breadfruit",
    "Ackee",
    "Ugli fruit",
    "Quince",
    "Loquat",
    "Carambola",
    "Jabuticaba",
    "Rambutan",
    "Salak",
    "Miracle fruit",
    "Cupuacu",
    "Santol",
    "Rose apple",
    "Sugar apple",
    "Chico fruit",
    "Feijoa",
    "Tamarillo",
    "Medlar",
    "Marang",
    "Buddha’s hand",
    "Barbados cherry",
    "Indian gooseberry",
    "White currant",
    "Red currant",
    "Black currant",
    "Cloudberry",
    "Sea buckthorn",
    "Serviceberry",
    "Jostaberry",
    "Huckleberry",
    "Boysenberry",
    "Olive",
    "Prickly pear",
    "Cactus fruit",
    "Bael",
    "Bilberry",
    "Black sapote",
    "Canistel",
    "Abiu",
    "Ambarella",
    "Bignay",
    "Ceylon gooseberry",
    "Chempedak",
    "Davidson’s plum",
    "Desert lime",
    "Gac fruit",
    "Governor’s plum",
    "Illawarra plum",
    "Kei apple",
    "Kiwano",
    "Lucuma",
    "Mamoncillo",
    "Monstera deliciosa",
    "Mountain pepper",
    "Naranjilla",
    "Pepino melon"
  ];
}
