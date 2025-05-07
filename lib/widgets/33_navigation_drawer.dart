import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Drawer Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Drawer Demo'),
      ),
      drawer: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Container(
              padding: const EdgeInsets.all(15),
              decoration:
              const BoxDecoration(color: CupertinoColors.systemGrey6),
              child: const DrawerHeaderWidget(
                isLogin: true,
                imageLink:
                'https://i.pinimg.com/236x/08/b7/0c/08b70cca5f5b17f4e1646b9d38138865.jpg',
                title: 'Shakib Al Hassan',
                subtitle: 'Dhaka, Bangladesh',
              )),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(color: CupertinoColors.systemGrey6),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 15, 16.0, 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Account Information",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 10, top: 15),
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const BuildMenuItem(
                                  icon: Icon(Icons.person_4_outlined),
                                  title: "Profile",
                                ),
                                BuildMenuItem(
                                  onTap: () {},
                                  icon: const Icon(Icons.history),
                                  title: 'Booking History',
                                )
                              ]),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "More Options",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 10, top: 15),
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BuildMenuItem(
                                icon: Icon(Icons.local_offer_outlined),
                                title: 'Offers',
                              ),
                              BuildMenuItem(
                                icon: Icon(Icons.privacy_tip_outlined),
                                title: 'Privacy Policy',
                              ),
                              BuildMenuItem(
                                icon: Icon(Icons.ac_unit),
                                title: 'About Us',
                              ),
                              BuildMenuItem(
                                icon: Icon(Icons.local_offer_outlined),
                                title: 'Support',
                              ),
                              BuildMenuItem(
                                icon: Icon(Icons.local_offer_outlined),
                                title: 'Cancellation Policy',
                              ),
                              BuildMenuItem(
                                icon: Icon(Icons.local_offer_outlined),
                                title: 'Terms & Condition',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 15),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Logout',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: const Center(
        child: Text('Main Content Area'),
      ),
    );
  }
}

class BuildMenuItem extends StatelessWidget {
  final Widget icon;
  final String title;
  final VoidCallback? onTap;

  const BuildMenuItem({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: InkWell(
        onTap: onTap ?? () {},
        child: Row(
          children: [
            icon,
            const SizedBox(width: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerHeaderWidget extends StatelessWidget {
  final bool isLogin;
  final String imageLink, title, subtitle;

  const DrawerHeaderWidget(
      {super.key,
        this.isLogin = false,
        required this.imageLink,
        required this.title,
        required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          15,
        ),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 35,
            backgroundImage: NetworkImage(
              imageLink,
            ),
          ),
          const SizedBox(width: 10),
          isLogin
              ?  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          )
              : ElevatedButton(onPressed: () {}, child: const Text("Login")),
        ],
      ),
    );
  }
}
