import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget/widgets/36_Paginated%20Data%20Table/provider/pagination_data_provider.dart';
import 'package:provider/provider.dart';

import 'model/person_data_model.dart';

class PaginatedDataTableScreen extends StatefulWidget {
  const PaginatedDataTableScreen({super.key});

  @override
  State<PaginatedDataTableScreen> createState() =>
      _PaginatedDataTableScreenState();
}

class _PaginatedDataTableScreenState extends State<PaginatedDataTableScreen> {
  getPersonData() async {
    final paginatedProvider = context.read<PaginationDataProvider>();

    try {
      paginatedProvider.setLoading(true);
      await paginatedProvider.getPaginatedData();
      paginatedProvider.setLoading(false);
    } catch (e) {
      paginatedProvider.setLoading(false);
      debugPrint("error---$e");
    }
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        getPersonData();
      },
    );
    super.initState();
  }

  int _rowsPerPage = 10;

  @override
  Widget build(BuildContext context) {
    final paginatedProvider = Provider.of<PaginationDataProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Pagination data table"),
      ),
      body: paginatedProvider.isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Padding(
              padding: EdgeInsets.all(15),
              child: SingleChildScrollView(
                  child: PaginatedDataTable(
                    columnSpacing: 10,
                      header: Text("Person Information"),
                      rowsPerPage: _rowsPerPage,
                      availableRowsPerPage: const [5, 10, 20],
                      onRowsPerPageChanged: (value) {
                        setState(() {
                          _rowsPerPage = value ?? 0;
                        });
                      },
                      columns: const [
                        DataColumn(label: Text("ID")),
                        DataColumn(label: Text("Name")),
                        DataColumn(label: Text("Email")),
                        DataColumn(label: Text("Phone")),
                        DataColumn(label: Text("Address")),
                      ],
                      source: PersonDataSource(
                          person: paginatedProvider.personInfoData ?? []))),
            ),
    );
  }
}

class PersonDataSource extends DataTableSource {
  final List<PersonDataModel> person;

  PersonDataSource({required this.person});

  @override
  DataRow? getRow(int index) {
    if (index >= person.length) return null;
    final people = person[index];
    return DataRow(cells: [
      DataCell(Text(people.id?.toString() ?? "")),
      DataCell(Text(people.name ?? "")),
      DataCell(Text(people.email ?? "")),
      DataCell(Text(people.phone ?? "")),
      DataCell(Text(people.address ?? "")),
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => person.length;

  @override
  int get selectedRowCount => 0;
}
