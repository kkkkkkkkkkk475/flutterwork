import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:flutter_application_1/rahul.dart';
import 'package:flutter_application_1/search_box.dart';
import 'package:flutter_application_1/splash2.dart';
import 'package:flutter_application_1/splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MeshoHome extends StatefulWidget {
  const MeshoHome({super.key});

  @override
  State<MeshoHome> createState() => _MeshoHomeState();
}

class _MeshoHomeState extends State<MeshoHome> {
  int _selectedIndex = 0;
  TextEditingController textController = TextEditingController();

  static const TextStyle optionStyle =
      TextStyle(fontSize: 0, fontWeight: FontWeight.bold);

  List<Widget> screens = const [HomePage(), Rahul1(), HomePage(), SearchBox()];

  set _ratingController(String? _ratingController) {}

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 234, 234),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 252, 243, 246),
            icon: Icon(
              Icons.home_outlined,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.collections,
              ),
              label: "Collections"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.travel_explore,
              ),
              label: "Explore"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_outline,
              ),
              label: "Wishlist"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              // ),
              label: "Account"),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
      drawer: Drawer(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
              ),
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
                  label: Text('Logout')),
            ],
          ),
        ),
      ),
      body: screens[_selectedIndex],
    );
  }
}
  // currentIndex: _selectedIndex,
  //       selectedItemColor: Colors.amber[800],
  //       unselectedItemColor: Colors.grey,
  //       onTap: _onItemTapped,
  //     ),
