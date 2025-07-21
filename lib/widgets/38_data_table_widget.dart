import 'package:flutter/material.dart';

class DataTableWidget extends StatefulWidget {
  const DataTableWidget({super.key});

  @override
  State<DataTableWidget> createState() => _DataTableWidgetState();
}

class _DataTableWidgetState extends State<DataTableWidget> {
  List<Map<String, String>> tableData = [
    {
      "name": "Rahim",
      "age": "25",
      "gender": "Male",
      "address": "Dhaka",
      "phone": "01710000001"
    },
    {
      "name": "Karim",
      "age": "28",
      "gender": "Male",
      "address": "Chittagong",
      "phone": "01710000002"
    },
    {
      "name": "Ayesha",
      "age": "24",
      "gender": "Female",
      "address": "Sylhet",
      "phone": "01710000003"
    },
    {
      "name": "Nusrat",
      "age": "26",
      "gender": "Female",
      "address": "Rajshahi",
      "phone": "01710000004"
    },
    {
      "name": "Jamal",
      "age": "30",
      "gender": "Male",
      "address": "Barisal",
      "phone": "01710000005"
    },
    {
      "name": "Sadia",
      "age": "23",
      "gender": "Female",
      "address": "Khulna",
      "phone": "01710000006"
    },
    {
      "name": "Hasan",
      "age": "27",
      "gender": "Male",
      "address": "Rangpur",
      "phone": "01710000007"
    },
    {
      "name": "Mim",
      "age": "22",
      "gender": "Female",
      "address": "Comilla",
      "phone": "01710000008"
    },
    {
      "name": "Rafi",
      "age": "29",
      "gender": "Male",
      "address": "Narayanganj",
      "phone": "01710000009"
    },
    {
      "name": "Tania",
      "age": "25",
      "gender": "Female",
      "address": "Gazipur",
      "phone": "01710000010"
    },
    {
      "name": "Sohan",
      "age": "31",
      "gender": "Male",
      "address": "Mymensingh",
      "phone": "01710000011"
    },
    {
      "name": "Ruma",
      "age": "21",
      "gender": "Female",
      "address": "Feni",
      "phone": "01710000012"
    },
    {
      "name": "Babu",
      "age": "26",
      "gender": "Male",
      "address": "Bogra",
      "phone": "01710000013"
    },
    {
      "name": "Priya",
      "age": "24",
      "gender": "Female",
      "address": "Jessore",
      "phone": "01710000014"
    },
    {
      "name": "Tanvir",
      "age": "28",
      "gender": "Male",
      "address": "Dinajpur",
      "phone": "01710000015"
    },
  ];

  //sort korar jonne variable
  int? _columnIndex;
  bool _isAssending = true;

  //row selected
  List<bool> selectedRows = [];
  @override
  void initState() {
    super.initState();
    selectedRows = List.generate(tableData.length, (_) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Table widget"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
                sortAscending: _isAssending,
                showBottomBorder: true,
                showCheckboxColumn: true,
                sortColumnIndex: _columnIndex,
                //give border all table
                border: TableBorder.all(),
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(34),
                //   // image: DecorationImage(image: AssetImage("assets/images_5.jpg"),fit: BoxFit.cover)
                //
                // ),
                columns: [
                  DataColumn(
                      onSort: (columnIndex, ascending) {
                        //first click a assending true hobe and second click a false hobe
                        setState(() {
                          _columnIndex = columnIndex;
                          _isAssending = ascending;
                          //first a table er data sort hobe
                          tableData.sort((a, b) {
                            final nameA = a["name"] ?? "";
                            final nameB = b["name"] ?? "";
                            return _isAssending
                                ? nameA.compareTo(nameB)
                                : nameB.compareTo(nameA);
                          });
                        });
                      },
                      label: const Text("Name")),
                  const DataColumn(label: Text("Age")),
                  const DataColumn(label: Text("Gender")),
                  const DataColumn(label: Text("Phone")),
                  const DataColumn(label: Text("address")),
                ],
                rows: List.generate(
                  tableData.length,
                  (index) {
                    return DataRow(selected: selectedRows[index] ?? false,
                        onSelectChanged: (value) {
                          setState(() {
                            selectedRows[index]=value ?? false;
                          });
                        },
                        cells: [
                      DataCell(Text(tableData[index]["name"] ?? "")),
                      DataCell(Text(tableData[index]["age"] ?? "")),
                      DataCell(Text(tableData[index]["gender"] ?? "")),
                      DataCell(Text(tableData[index]["address"] ?? "")),
                      DataCell(Text(tableData[index]["phone"] ??"")),
                    ]);
                  },
                )),
          ),
        ),
      ),
    );
  }
}
