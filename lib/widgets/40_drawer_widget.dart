import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SizedBox(
        width: 280,
        child: Drawer(
          backgroundColor: Colors.deepPurpleAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //drawer header
              DrawerHeader(
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide.none)
                ),
                  child: Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcSgCocE47jDiqaA0RyOHd1EBIwinzAh_z8RS3JnfJF_U-X-JqHtWjTp3Z0JFa1ECzPQX_AfYsD7q7ufxZo",
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mahmudullah Riyad",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "riyad@gmail.com",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              )),

              //drawer body
              ListTile(
                leading: Icon(
                  Icons.folder,
                  size: 20,
                  color: Colors.white,
                ),
                title: Text(
                  "My Files",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.group,
                  size: 20,
                  color: Colors.white,
                ),
                title: Text(
                  "Shared with me",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.star,
                  size: 20,
                  color: Colors.white,
                ),
                title: Text(
                  "Starred",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.delete,
                  size: 20,
                  color: Colors.white,
                ),
                title: Text(
                  "Trash",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.upload,
                  size: 20,
                  color: Colors.white,
                ),
                title: Text(
                  "Uploads",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.share,
                  size: 20,
                  color: Colors.white,
                ),
                title: Text(
                  "Share",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.delete,
                  size: 20,
                  color: Colors.white,
                ),
                title: Text(
                  "Logout",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text("Drawer Widget"),
      ),
      body: const Center(
        child: Text(
          "Drwer Widget ",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
