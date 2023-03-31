import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter_application_1/profile_home.dart';
import 'package:flutter_application_1/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'emails.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List images = [
    "assets/3756007.jpg",
    "assets/pink-sweater-front.jpg",
    "assets/10.jpg",
    "assets/Love_dp-1480.jpg"
  ];
  String? token;
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Meesho',
          style: TextStyle(color: Colors.red),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.add))
        ],
      ),
      drawer: Drawer(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                                'assets/IMG_20230119_182317_882.jpg'),
                            radius: 35,
                          ),
                        ),
                        Text('RAHUL KUMAWAT'),
                        SizedBox(
                          height: 5,
                        ),
                        Text('email: Kumawatrahul1096gmail.com')
                      ],
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.email,
                    size: 25,
                  ),
                  label: Text(
                    'EMAIL',
                    style: TextStyle(fontSize: 15),
                  )),
              SizedBox(
                height: 10,
              ),
              TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.adb_outlined,
                    size: 25,
                  ),
                  label: Text(
                    'About',
                    style: TextStyle(fontSize: 15),
                  )),
              SizedBox(
                height: 10,
              ),
              TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.settings,
                    size: 25,
                  ),
                  label: Text(
                    'Setting',
                    style: TextStyle(fontSize: 15),
                  )),
              SizedBox(
                height: 5,
              ),
              TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_outline_sharp,
                    size: 25,
                  ),
                  label: Text(
                    'Favourites',
                    style: TextStyle(fontSize: 15),
                  )),
              Divider(),
              TextButton.icon(
                  onPressed: () {
                    SharedPreferences.getInstance().then((value) {
                      value.clear();
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SplashScreen(),
                          ),
                          (route) => false);
                    });
                  },
                  icon: Icon(Icons.logout),
                  label: Text('Logout'))
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.yellowAccent,
        backgroundColor: Colors.blue[300],
        elevation: 0,
        currentIndex: currentIndex,
        unselectedLabelStyle: TextStyle(color: Colors.white),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  SharedPreferences.getInstance()
                      .then((value) => value.clear());
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Mobile(
                          title: '',
                        ),
                      ),
                      (route) => false);
                },
                child: Icon(
                  Icons.logout,
                ),
              ),
              label: "Logout"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "Profile"),
        ],
        onTap: (Index) {
          setState(() {
            currentIndex = Index;
          });
        },
      ),
      body: Center(
        child: ListView(children: [
          CarouselSlider(
              items: [
                for (int i = 0; i < images.length; i++)
                  SizedBox(
                    width: 390,
                    child: Image.asset(
                      images[i],
                      fit: BoxFit.cover,
                    ),
                  ),
              ],
              options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 2,
                  viewportFraction: 1)),
        ]),
      ),
    );
  }
}
