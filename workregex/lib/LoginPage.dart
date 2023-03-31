import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workregex/NGOaCTIVE.dart';
import 'package:workregex/bloodAvailabilitySearch%20.dart';
import 'package:workregex/ngoProgramScreen%20.dart';
import 'package:workregex/profile.dart';
import 'package:workregex/volunteer.dart';
import 'BecomeVolunteerScreen.dart';
import 'DonationScreen.dart';
import 'home.dart';
import 'logo.dart';
import 'notification.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  List images = [
    "assets/wp4323509-blood-donation-wallpapers.jpg",
    "assets/wp4323470-blood-donation-wallpapers.jpg",
  ];
  List text_icon = [
    {
      "icon": Icons.search,
      "text": "Blood Availability Search",
    },
    {"icon": Icons.manage_accounts_outlined, "text": "Become a\nVolunteer"},
    {"icon": Icons.video_library_outlined, "text": "NGO Activity"},
    {"icon": Icons.bloodtype_outlined, "text": "Blood\nDonation"},
    {"icon": Icons.campaign_outlined, "text": "Blood Donation\nCamp"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEDEDED),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffBF222B),
        child: Image.asset(
          'assets/Vector.png',
          height: 25,
        ),
        onPressed: () {},
      ),
      appBar: AppBar(
        title: Text('Hello, Vikash Sharma'),
        backgroundColor: Color.fromARGB(255, 173, 17, 5),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Noti(),
                    ));
              },
              icon: Icon(Icons.notifications_none))
        ],
      ),
      drawer: Drawer(
        width: 250,
        child: SafeArea(
          child: Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 11),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(
                              'assets/wp4323528-blood-donation-wallpapers.jpg'),
                        ),
                        Column(
                          children: [
                            Text(
                              '    Vikash Sharma',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            Text(
                              '963258740             ',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      width: 200,
                      child: Divider(
                        color: Colors.black,
                      )),
                  TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.manage_accounts_outlined,
                        color: Color.fromARGB(255, 173, 17, 5),
                      ),
                      label: Text(
                        'Profile',
                        style: GoogleFonts.roboto(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff303030)),
                      )),
                  TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.history,
                        color: Color.fromARGB(255, 173, 17, 5),
                      ),
                      label: Text(
                        'Donation history',
                        style: GoogleFonts.roboto(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      )),
                  TextButton.icon(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Noti(),
                            ));
                      },
                      icon: Icon(
                        Icons.notifications_active,
                        color: Color.fromARGB(255, 173, 17, 5),
                      ),
                      label: Text(
                        'Notification',
                        style: GoogleFonts.roboto(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      )),
                  TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.home_work_outlined,
                        color: Color(0xffBF222B),
                      ),
                      label: Text(
                        'About NGO',
                        style: GoogleFonts.roboto(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      width: 200,
                      child: Divider(
                        color: Colors.black,
                      )),
                  TextButton.icon(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Volunteer(),
                            ));
                      },
                      icon: Icon(
                        Icons.group_add_outlined,
                        color: Color.fromARGB(255, 173, 17, 5),
                      ),
                      label: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Home2(),
                              ));
                        },
                        child: Text(
                          'Become a Volunteer ',
                          style: GoogleFonts.roboto(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff303030)),
                        ),
                      )),
                  TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.filter_1_outlined,
                        color: Color.fromARGB(255, 173, 17, 5),
                      ),
                      label: Text(
                        'Terms & Condition  ',
                        style: GoogleFonts.roboto(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      )),
                  TextButton.icon(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SplashScreen(),
                            ));
                      },
                      icon: Icon(
                        Icons.settings_power_outlined,
                        color: Color.fromARGB(255, 173, 17, 5),
                      ),
                      label: Text(
                        ' Logout',
                        style: GoogleFonts.roboto(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                ),
                child: Container(
                  height: 119,
                  width: 380,
                  child: Image.asset(
                    'assets/Rectangle 31.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 125,
              width: double.infinity,
              // ignore: sort_child_properties_last
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      'NGO Has Been Upto                                                        ',
                      style: GoogleFonts.roboto(
                          fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: Row(
                      children: [
                        Container(
                          height: 70,
                          width: 180,
                          // ignore: sort_child_properties_last
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  '  Number of Volunteer',
                                  style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    color: Color(0xffFFFFFF),
                                  ),
                                ),
                                Text(
                                  '10,000',
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Color(0xffFFFFFF),
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 173, 17, 5),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 67,
                          width: 180,
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                '  Number of Volunteer',
                                style: GoogleFonts.roboto(
                                    fontSize: 14, color: Colors.white),
                              ),
                              Text(
                                '10,110,000',
                                style: TextStyle(
                                    fontSize: 28,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 173, 17, 5),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 247, 246, 246)),
            ),
            Container(
              height: 350,
              width: double.infinity,
              // ignore: sort_child_properties_last
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          ' NGO Program',
                          style: GoogleFonts.roboto(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => NgoProgramScreen(),
                                ));
                          },
                          child: Text(
                            'See All   ',
                            style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: text_icon.length,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 100,
                            width: 128,
                            decoration: BoxDecoration(color: Colors.white),
                            child: Column(
                              children: [
                                Icon(text_icon[index]["icon"],
                                    color: Color(0xffBF222B)),
                                Text(
                                  text_icon[index]["text"],
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.roboto(
                                      height: 1.2,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 390,
                      child: PageView.builder(
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 390,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage(images[index]))),
                            );
                          }),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                    )
                  ],
                ),
              ),
              decoration: BoxDecoration(color: Colors.white),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 130,
              // ignore: sort_child_properties_last
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '   Latest News',
                          style: GoogleFonts.roboto(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'See All    ',
                          style: GoogleFonts.roboto(
                              fontSize: 16, color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 70,
                    width: 360,
                    // ignore: sort_child_properties_last
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(
                                'assets/wp4323509-blood-donation-wallpapers.jpg'),
                            radius: 25,
                          ),
                          Text(
                              '    Simple dummy text of the printingand type\n     setting industry.\n                                                              2hours ago')
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20)),
                  )
                ],
              ),
              decoration: BoxDecoration(color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 300,
              width: double.infinity,
              // ignore: sort_child_properties_last
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '\n     Feedback',
                      style: GoogleFonts.roboto(
                          fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 250,
                    width: 360,
                    // ignore: sort_child_properties_last
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            ' Feel free to share your feedback with us                      ',
                            style: GoogleFonts.roboto(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: RatingBar.builder(
                            minRating: 0,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star_rate_rounded,
                              color: Colors.yellow,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '   Tell us about your experience',
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w300, fontSize: 13),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 13, right: 55),
                          child: Container(
                            height: 80,
                            width: 280,
                            // ignore: sort_child_properties_last
                            child: Center(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Write here',
                                  border: InputBorder.none,
                                  hintStyle: GoogleFonts.roboto(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                            )),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(18)),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 13),
                          child: Row(
                            children: [
                              Container(
                                height: 46,
                                width: 90,
                                child: Center(
                                    child: Text('Cancel',
                                        style: GoogleFonts.roboto(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400))),
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 46,
                                width: 156,
                                child: Center(
                                    child: Text('Submit Feedback',
                                        style: GoogleFonts.roboto(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400))),
                                decoration: BoxDecoration(
                                    color: Color(0xffADA2A2),
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(color: Colors.white),
                  ),
                ],
              ),
              decoration: BoxDecoration(color: Colors.grey[200]),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
