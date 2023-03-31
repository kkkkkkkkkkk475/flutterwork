import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:workregex/bottomn.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

String name = '';
XFile? image;

class _profileState extends State<profile> {
  @override
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController MobileController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController bloodGroupController = TextEditingController();
  TextEditingController DistrictController = TextEditingController();
  GlobalKey<ScaffoldState> key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEDEDED),
      key: key,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Profile",
          style: GoogleFonts.roboto(fontSize: 19, fontWeight: FontWeight.w700),
        ),
        backgroundColor: Color(0xffBF222B),
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Bottom(),
                  ));
            },
            icon: Icon(Icons.arrow_back)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.edit_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(children: [
                  InkWell(  onTap: () => bottomSheetWidget(),
                  
                    child: CircleAvatar(
                      radius: 70,
                      backgroundColor: Color.fromARGB(255, 167, 6, 14),
                      child: image == null
                          ? CircleAvatar(
                              radius: 65,
                              backgroundImage: AssetImage(
                                  'assets/wp4323528-blood-donation-wallpapers.jpg'))
                          : CircleAvatar(
                              radius: 65,
                              backgroundImage: FileImage(File(image!.path)),
                            ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 85, top: 85),
                    child: CircleAvatar(
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.camera_alt_outlined,
                            size: 30,
                            color: Color(0xffBF222B),
                          )),
                      radius: 25,
                      backgroundColor: Colors.white,
                    ),
                  ),
                ]),
                SizedBox(
                  height: 13,
                ),
                Text(
                  "Vikash Sharma",
                  style: GoogleFonts.roboto(
                      fontSize: 20, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  child: Divider(
                    color: Colors.black,
                  ),
                  width: 250,
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 50,
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                  padding: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(41),
                    shape: BoxShape.rectangle,
                  ),
                ),
                Positioned(
                  left: 50,
                  top: 12,
                  child: Container(
                    padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                    color: Color(0xffEDEDED),
                    child: Text(
                      'Create an account',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 50,
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                  padding: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(41),
                    shape: BoxShape.rectangle,
                  ),
                ),
                Positioned(
                  left: 50,
                  top: 12,
                  child: Container(
                    padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                    color: Color(0xffEDEDED),
                    child: Text(
                      'Create an account',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 50,
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                  padding: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(41),
                    shape: BoxShape.rectangle,
                  ),
                ),
                Positioned(
                  left: 50,
                  top: 12,
                  child: Container(
                    padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                    color: Color(0xffEDEDED),
                    child: Text(
                      'Create an account',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 50,
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                  padding: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(41),
                    shape: BoxShape.rectangle,
                  ),
                ),
                Positioned(
                  left: 50,
                  top: 12,
                  child: Container(
                    padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                    color: Color(0xffEDEDED),
                    child: Text(
                      'Create an account',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 50,
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                  padding: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(41),
                    shape: BoxShape.rectangle,
                  ),
                ),
                Positioned(
                  left: 50,
                  top: 12,
                  child: Container(
                    padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                    color: Color(0xffEDEDED),
                    child: Text(
                      'Create an account',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 50,
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                  padding: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(41),
                    shape: BoxShape.rectangle,
                  ),
                ),
                Positioned(
                  left: 50,
                  top: 12,
                  child: Container(
                    padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                    color: Color(0xffEDEDED),
                    child: Text(
                      'Create an account',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void saveData() async {
    final pref = await SharedPreferences.getInstance();

    name = pref.getString("name")!;

    print(name);
  }

  void bottomSheetWidget() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(15.0),
        ),
      ),
      builder: (context) => DraggableScrollableSheet(
          initialChildSize: 0.28,
          maxChildSize: 0.4,
          minChildSize: 0.28,
          expand: false,
          builder: (context, scrollController) {
            return SingleChildScrollView(
                controller: scrollController,
                child: Column(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          ImagePicker()
                              .pickImage(source: ImageSource.camera)
                              .then((value) {
                            image = value;
                            setState(() {});
                          });
                        },
                        child: Text('Camera')),
                    ElevatedButton(
                        onPressed: () {
                          ImagePicker()
                              .pickImage(source: ImageSource.gallery)
                              .then((value) {
                            image = value;
                            setState(() {});
                          });
                        },
                        child: Text('Gallery'))
                  ],
                ));
          }),
    );
  }
}
