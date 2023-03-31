import 'dart:io';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/lickitem.dart';
import 'package:flutter_application_1/notification.dart';
import 'package:flutter_application_1/profile.dart';
import 'package:flutter_application_1/search_box.dart';
import 'package:flutter_application_1/splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker_widget/image_picker_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'SHOPING_ION.dart';
import 'order.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textController = TextEditingController();

  void main() => runApp(HomePage());
  bool show = false;
  List<Map<String, dynamic>> images = [
    {'image_url': "assets/10.jpg", 'icon_name': '  Categories'},
    {'image_url': "assets/91.webp", 'icon_name': '   girls'},
    {'image_url': "assets/92.webp", 'icon_name': '   new'},
    {'image_url': "assets/93.webp", 'icon_name': '   man'},
    {'image_url': "assets/94.webp", 'icon_name': '    mancloth'},
    {'image_url': "assets/100.jpeg", 'icon_name': '    Best'},
    {'image_url': "assets/10.jpg", 'icon_name': 'Unsplash17'},
    {'image_url': "assets/100.jpeg", 'icon_name': 'Unsplash1'},
    {'image_url': "assets/10.jpg", 'icon_name': 'Unsplash1'},
    {'image_url': "assets/100.jpeg", 'icon_name': 'Unsplash1'},
    {'image_url': "assets/10.jpg", 'icon_name': 'Unsplash1'},
    {'image_url': "assets/100.jpeg", 'icon_name': 'Unsplash1'},
  ];
  List images2 = [
    {'image_url': "assets/223.jpeg", 'icon_name': 'Unsplash1'},
    {'image_url': "assets/1000.webp", 'icon_name': 'Unsplash12'},
    {'image_url': "assets/93.webp", 'icon_name': 'Unsplash13'},
    {'image_url': "assets/6f5do_400.webp", 'icon_name': 'Unsplash14'},
    {'image_url': "assets/91.webp", 'icon_name': 'Unsplash15'},
    {'image_url': "assets/100.jpeg", 'icon_name': 'Unsplash61'},
    {'image_url': "assets/10.jpg", 'icon_name': 'Unsplash17'},
    {'image_url': "assets/100.jpeg", 'icon_name': 'Unsplash1'},
    {'image_url': "assets/10.jpg", 'icon_name': 'Unsplash1'},
    {'image_url': "assets/100.jpeg", 'icon_name': 'Unsplash1'},
    {'image_url': "assets/10.jpg", 'icon_name': 'Unsplash1'},
    {'image_url': "assets/100.jpeg", 'icon_name': 'Unsplash1'},
  ];

  XFile? image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            elevation: 0,
            toolbarHeight: 80,
            actions: [
              Row(
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              backgroundColor: Colors.blue[300],
                              context: context,
                              builder: (BuildContext context) {
                                return SizedBox(
                                  height: 100,
                                  width: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 80, bottom: 30),
                                    child: Row(
                                      children: [
                                        IconButton(
                                            onPressed: () {
                                              ImagePicker()
                                                  .pickImage(
                                                      source:
                                                          ImageSource.camera)
                                                  .then((value) {
                                                image = value;
                                                setState(() {});
                                              });
                                            },
                                            icon: Icon(
                                              Icons.camera_outlined,
                                              size: 60,
                                            )),
                                        SizedBox(
                                          width: 100,
                                        ),
                                        IconButton(
                                            onPressed: () {
                                              ImagePicker()
                                                  .pickImage(
                                                      source:
                                                          ImageSource.gallery)
                                                  .then((value) {
                                                image = value;
                                                setState(() {});
                                              });
                                            },
                                            icon: Icon(
                                              Icons.photo_library_outlined,
                                              size: 60,
                                            ))
                                      ],
                                    ),
                                  ),
                                );
                              });
                        },
                        child: image != null
                            ? CircleAvatar(
                                radius: 25,
                                backgroundImage: FileImage(File(image!.path)),
                              )
                            : CircleAvatar(
                                radius: 25,
                                backgroundImage:
                                    const AssetImage('assets/profile.webp'),
                              ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (BuildContext context) {
                                  return SizedBox(
                                    height: 500,
                                    width: double.infinity,
                                    child: Column(
                                      children: [
                                        TextButton.icon(
                                            onPressed: () {
                                              SharedPreferences.getInstance()
                                                  .then((value) {
                                                value.clear();
                                                Navigator.pushAndRemoveUntil(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          SplashScreen(),
                                                    ),
                                                    (route) => false);
                                              });
                                            },
                                            icon: Icon(Icons.logout),
                                            label: Text('Logout')),
                                      ],
                                    ),
                                  );
                                });
                          },
                          child: Row(
                            children: [
                              Text(
                                'Rahul Kumawat',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              Icon(
                                Icons.arrow_drop_down_outlined,
                                color: Colors.black,
                              )
                            ],
                          )),
                    ],
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Lick_Item(),
                                ));
                          },
                          icon: Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.black,
                          )),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Notificatio(),
                                ));
                          },
                          icon: Icon(
                            Icons.notifications,
                            color: Colors.black,
                          )),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Shoping(),
                                ));
                          },
                          icon: Icon(
                            Icons.shopping_cart_checkout,
                            color: Colors.black,
                          )),
                    ],
                  )
                ],
              ),
              Container()
            ]),
        body: SingleChildScrollView(
            child: SafeArea(
          child: Column(
            children: [
              Stack(children: [
                Center(
                  child: Container(
                    width: 355,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.mic),
                        IconButton(
                            onPressed: () {
                              ImagePicker()
                                  .pickImage(source: ImageSource.camera)
                                  .then((value) {
                                image = value;
                                setState(() {});
                              });
                            },
                            icon: Icon(
                              Icons.camera_outlined,
                              size: 25,
                            )),
                      ],
                    ),
                    height: 45,
                    decoration: BoxDecoration(border: Border.all()),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 65),
                  child: Container(
                      height: 45,
                      decoration:
                          BoxDecoration(border: Border(right: BorderSide())),
                      margin: EdgeInsets.symmetric(horizontal: 35),
                      child: TextFormField(
                        decoration: InputDecoration( hintText: '', border: InputBorder.none),
                      )),
                )
              ]),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Profile(),
                            ));
                      },
                      child: Text(
                          'add dlivery location to check  extra discount>>>')),
                ),
                decoration: BoxDecoration(color: Colors.purple[200]),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 90,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: images.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  AssetImage(images[index]['image_url']),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0, left: 5),
                              child: SizedBox(
                                width: 70,
                                child: Text(
                                  images[index]['icon_name'],
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.workSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 150,
                width: double.infinity,
                child: ListView(children: [
                  CarouselSlider(
                      items: [
                        Row(
                          children: [
                            Image.asset('assets/24dd6_256.jpg'),
                            Image.asset('assets/93.webp'),
                            Image.asset(
                              'assets/91.webp',
                              width: 120,
                            ),
                          ],
                        )
                      ],
                      options: CarouselOptions(
                          autoPlay: true,
                          enlargeCenterPage: true,
                          aspectRatio: 2,
                          viewportFraction: 1))
                ]),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 70,
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: CircleAvatar(
                        radius: 25,
                        child: Image.asset(
                          'assets/3756007.jpg',
                          width: 35,
                        ),
                      ),
                    ),
                    InkWell(onTap: () {}, child: Text('Cash on \nDelivary')),
                    Container(
                      height: 35,
                      width: 150,
                      child: Row(
                        children: [
                          const CircleAvatar(
                            backgroundImage: AssetImage('assets/100.jpeg'),
                            radius: 30,
                            backgroundColor: Colors.white,
                          ),
                          InkWell(
                              onTap: () {},
                              child: Text('Free dlivery\nfree return')),
                        ],
                      ),
                      decoration: BoxDecoration(
                          border: Border(
                              right: BorderSide(
                                color: Colors.white,
                              ),
                              left: BorderSide(color: Colors.white))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            backgroundImage: AssetImage('assets/4.jpg'),
                            radius: 17,
                            backgroundColor: Colors.white,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          InkWell(child: Text('Lowest\nPrice'))
                        ],
                      ),
                    )
                  ],
                ),
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 198, 191, 199)),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '  Bachat Bazaar',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 180,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: images.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            Container(
                              width: 100,
                              height: 100,

                              child: Image.asset(
                                images2[index]['image_url'],
                                fit: BoxFit.cover,
                              ), //erorr
                            ),
                            Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Text(images[index]['icon_name']),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 27,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '  Products for you',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.white),
              )
            ],
          ),
        )));
  }

  final List Rahul = [
    "assets/94.webp",
    "assets/224.jpg",
    "assets/778.png",
    "assets/91.webp"
  ];
}
