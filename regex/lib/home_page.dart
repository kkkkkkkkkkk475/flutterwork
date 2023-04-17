import 'package:flutter/material.dart';
import 'package:regex/add.dart';
import 'package:regex/drawer_appbar.dart';
import 'package:regex/home.dart';
import 'package:regex/profile.dart';
import 'package:regex/scanner.dart';
import 'package:regex/search.dart';

class MyHomePageScreen extends StatefulWidget {
  const MyHomePageScreen({super.key});

  @override
  State<MyHomePageScreen> createState() => _MyHomePageScreenState();
}

enum BottomNav { HOME, PROFILE, ADD, SCANNER, SEARCH }

class _MyHomePageScreenState extends State<MyHomePageScreen> {
  BottomNav bottomNav = BottomNav.HOME;


  Widget showBodyWidget() {
    switch (bottomNav) {
      case BottomNav.HOME:
        return const HomeScreen();
      case BottomNav.SEARCH:
        return const SearchScreen();
      case BottomNav.ADD:
        return const AddScreen();
      case BottomNav.SCANNER:
        return const ScannerScreen();
      case BottomNav.PROFILE:
        return const ProfileScreen();
      default:
        return const HomeScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 1,
      //   iconTheme: IconThemeData(color: Colors.black),
      // ),
      // drawer: DrawerAppBar(),
      endDrawer: DrawerAppBar(),
      bottomNavigationBar: SizedBox(
        height: 80,
        width: double.infinity,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          IconButton(
              onPressed: () {
                setState(() {
                  bottomNav = BottomNav.HOME;
                });
              },
              icon: Icon(
                Icons.home,
                color: bottomNav == BottomNav.HOME ? Colors.blue : null,
              )),
          IconButton(
              onPressed: () {
                setState(() {
                  bottomNav = BottomNav.SEARCH;
                });
              },
              icon: Icon(
                Icons.search,
                color: bottomNav == BottomNav.SEARCH ? Colors.blue : null,
              )),
          IconButton(
              onPressed: () {
                setState(() {
                  bottomNav = BottomNav.ADD;
                });
              },
              icon: Icon(
                Icons.add,
                color: bottomNav == BottomNav.ADD ? Colors.blue : null,
              )),
          IconButton(
              onPressed: () {
                setState(() {
                  bottomNav = BottomNav.SCANNER;
                });
              },
              icon: Icon(
                Icons.chat,
                color: bottomNav == BottomNav.SCANNER ? Colors.blue : null,
              )),
          IconButton(
              onPressed: () {
                setState(() {
                  bottomNav = BottomNav.PROFILE;
                });
              },
              icon: Icon(
                Icons.person,
                color: bottomNav == BottomNav.PROFILE ? Colors.blue : null,
              )),
        ]),
      ),
      body: showBodyWidget(),
    );
  }
}
