import 'package:flutter/material.dart';

class NestedDropDownFromFeild extends StatefulWidget {
  const NestedDropDownFromFeild({super.key});

  @override
  State<NestedDropDownFromFeild> createState() =>
      _NestedDropDownFromFeildState();
}

class _NestedDropDownFromFeildState extends State<NestedDropDownFromFeild> {
  Map<String, List<String>> countryWiseCity = {
    "Bangladesh": ["Dhaka", "Chittagong", "Khulna", "Rajshahi", "Sylhet"],
    "India": ["Mumbai", "Delhi", "Bangalore", "Kolkata", "Chennai"],
    "USA": ["New York", "Los Angeles", "Chicago", "Houston", "Phoenix"],
    "UK": ["London", "Manchester", "Birmingham", "Liverpool", "Edinburgh"],
    "Canada": ["Toronto", "Vancouver", "Montreal", "Calgary", "Ottawa"],
    "Australia": ["Sydney", "Melbourne", "Brisbane", "Perth", "Adelaide"],
    "Japan": ["Tokyo", "Osaka", "Kyoto", "Yokohama", "Nagoya"],
    "Germany": ["Berlin", "Munich", "Hamburg", "Frankfurt", "Cologne"],
    "France": ["Paris", "Marseille", "Lyon", "Toulouse", "Nice"],
    "Brazil": [
      "São Paulo",
      "Rio de Janeiro",
      "Brasília",
      "Salvador",
      "Fortaleza"
    ]
  };

  Future<Map<String, List<String>>> getCountryWiseCity() async {
    return Future.delayed(const Duration(seconds: 3)).then(
      (value) => countryWiseCity,
    );
  }

  String? selectedCountry;
  String? selectedCity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Example Nested Dropdown From Feild"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: FutureBuilder(
            future: getCountryWiseCity(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("Error ${snapshot.error}"),
                );
              } else {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      "Select Country",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    DropdownButtonFormField(
                      decoration: const InputDecoration(
                          labelText: "Please Select Country",
                          border: OutlineInputBorder()),
                      value: selectedCountry,
                      onChanged: (value) {
                        setState(() {
                          selectedCountry = value?.toString() ?? "";
                        });
                      },
                      items: snapshot.data?.keys.map(
                            (country) {
                              return DropdownMenuItem(
                                value: country,
                                child: Text(country ?? ""),
                              );
                            },
                          ).toList() ??
                          [],
                    ),

                    //select city

                    if (selectedCountry != null) ...[
                      SizedBox(
                        height: 15,
                      ),
                      DropdownButtonFormField(
                        onChanged: (value) {
                          setState(() {
                            selectedCity = value;
                          });
                        },
                        value: selectedCity,
                        decoration: const InputDecoration(
                            labelText: "Please Select Country",
                            border: OutlineInputBorder()),
                        items: snapshot.data?[selectedCountry]
                            ?.map(
                              (city) => DropdownMenuItem(
                                  value: city, child: Text(city)),
                            )
                            .toList(),
                      )
                    ]
                  ],
                );
              }
            },
          ),
        ));
  }
}

/*
import 'package:flutter/material.dart';



class NestedDropdownExample extends StatefulWidget {
  @override
  _NestedDropdownExampleState createState() => _NestedDropdownExampleState();
}

class _NestedDropdownExampleState extends State<NestedDropdownExample> {
  String? selectedCountry;
  String? selectedCity;

  // Country & City Map
  final Map<String, List<String>> countryCityMap = {
    'Bangladesh': ['Dhaka', 'Chittagong', 'Sylhet'],
    'India': ['Delhi', 'Mumbai', 'Kolkata'],
    'USA': ['New York', 'Los Angeles', 'Chicago'],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Nested Dropdown Example")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Country Dropdown
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: 'Select Country',
                border: OutlineInputBorder(),
              ),
              value: selectedCountry,
              items: countryCityMap.keys.map((String country) {
                return DropdownMenuItem<String>(
                  value: country,
                  child: Text(country),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedCountry = value;
                  selectedCity = null; // reset city when country changes
                });
              },
            ),
            SizedBox(height: 20),

            // City Dropdown (depends on Country)
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: 'Select City',
                border: OutlineInputBorder(),
              ),
              value: selectedCity,
              items: selectedCountry == null
                  ? []
                  : countryCityMap[selectedCountry]!.map((String city) {
                return DropdownMenuItem<String>(
                  value: city,
                  child: Text(city),
                );
              }).toList(),
              onChanged: selectedCountry == null
                  ? null
                  : (value) {
                setState(() {
                  selectedCity = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
*/
