// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_button/like_button.dart';
import 'package:workregex/eventscreen.dart';

class NgoActivityScreen extends StatefulWidget {
  const NgoActivityScreen({super.key});

  @override
  State<NgoActivityScreen> createState() => _NgoActivityScreenState();
}

class _NgoActivityScreenState extends State<NgoActivityScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 243, 241, 241),
        appBar: AppBar(leading: BackButton(),
          elevation: 0,
          title: Text(
            "NGO Activity",
            style:
                GoogleFonts.roboto(fontSize: 19, fontWeight: FontWeight.w700),
          ),
          backgroundColor: Color(0xffBF222B),
          actions: [
            IconButton(
                onPressed: () {}, icon: Icon(Icons.notifications_outlined))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              TabBar(
                  indicatorColor: Color(0xffBF222B),
                  labelStyle: GoogleFonts.roboto(
                      fontSize: 16, fontWeight: FontWeight.w700),
                  labelColor: Color(0xff473D3D),
                  tabs: [
                    Tab(
                      text: "All Post",
                    ),
                    Tab(
                      text: "NGO Event",
                    )
                  ]),
              Container(
                height: 1770,
                width: MediaQuery.of(context).size.width,
                child: TabBarView(children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 420,
                        width: double.infinity,
                        // ignore: sort_child_properties_last
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20, left: 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage('assets/Ellipse 18.png'),
                                      radius: 30,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        Text(
                                          'Post by NGO',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Text(
                                          'Post by NGO       ',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 20, bottom: 20),
                                child: Text(
                                  '\nwe want to thank all of our donors for their\ngenerous contribution.',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 20, right: 10),
                                child: Stack(children: [
                                  Container(
                                    height: 150,
                                    width: 360,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/Rectangle 111.png'),
                                            fit: BoxFit.cover),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 150, top: 50),
                                    child: Icon(
                                      Icons.play_circle_outline,
                                      color: Color(0xffF7B8A6),
                                      size: 60,
                                    ),
                                  )
                                ]),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    ' 32 Likes',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    '10 Comments     ',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Row(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: LikeButton(
                                        likeBuilder: (isliked) {
                                          if (!isliked)
                                            return const Icon(
                                              Icons.thumb_up_alt_outlined,
                                              color: Colors.black,
                                            );
                                          if (isliked)
                                            return const Icon(
                                              Icons.thumb_up_alt,
                                              color: Colors.red,
                                            );
                                        },
                                      )),
                                  Text(
                                    'Like',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 60),
                                    child: Icon(Icons.comment),
                                  ),
                                  Text(
                                    'Comment',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 40),
                                    child: Icon(Icons.share_outlined),
                                  ),
                                  Text(
                                    'Share',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(color: Colors.white),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // ignore: sort_child_properties_last
                      Container(
                        // ignore: sort_child_properties_last
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, top: 15),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage('assets/Ellipse 18.png'),
                                      radius: 30,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        Text(
                                          'Post by NGO',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Text(
                                          'Post by NGO       ',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'we want to thank all of our donors for their generous contribution.',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'we want to thank all of our donors for their generous contribution. Your blood donations can save lives, and we are grateful for your selfless act of kindness..',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  LikeButton(
                                    likeBuilder: (isliked) {
                                      if (!isliked)
                                        return const Icon(
                                          Icons.thumb_up_alt_outlined,
                                          color: Colors.black,
                                        );
                                      if (isliked)
                                        return const Icon(
                                          Icons.thumb_up_alt,
                                          color: Colors.red,
                                        );
                                    },
                                  ),
                                  Text(
                                    'Like',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 150),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Row(
                                        children: [
                                          Icon(Icons.comment),
                                          Text(
                                            'Comment',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        height: 290,
                        width: double.infinity,
                        decoration: BoxDecoration(color: Colors.white),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 320,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15, top: 15),
                              child: Row(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage('assets/Ellipse 18.png'),
                                      radius: 30,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        Text(
                                          'Post by NGO',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Text(
                                          'Post by NGO       ',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Text(
                              '\nwe want to thank all of our donors for their\ngenerous contribution.',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 150,
                              width: 360,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/Rectangle 135 (1).png',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                            )
                          ],
                        ),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        height: 270,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 16,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CircleAvatar(),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Post by NGO",
                                        style: GoogleFonts.roboto(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xff473D3D)),
                                      ),
                                      Text(
                                        "2 hours ago",
                                        style: GoogleFonts.roboto(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff473D3D)),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Text(
                                "we want to thank all of our donors for their generous contribution.",
                                style: GoogleFonts.roboto(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff5C5050)),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "we want to thank all of our donors for their generous contribution.\nYour blood donations can save lives, and we are grateful for your\nselfless act of kindness.",
                                style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff5C5050)),
                              ),
                              SizedBox(
                                height: 24,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text.rich(
                                    TextSpan(children: [
                                      TextSpan(
                                          text: "32 ",
                                          style: GoogleFonts.roboto(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xff857878))),
                                      TextSpan(
                                          text: "Likes",
                                          style: GoogleFonts.roboto(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xff857878)))
                                    ]),
                                  ),
                                  Text.rich(
                                    TextSpan(children: [
                                      TextSpan(
                                          text: "10 ",
                                          style: GoogleFonts.roboto(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xff857878))),
                                      TextSpan(
                                          text: "Comments",
                                          style: GoogleFonts.roboto(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xff857878)))
                                    ]),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Row(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: LikeButton(
                                        likeBuilder: (isliked) {
                                          if (!isliked)
                                            return const Icon(
                                              Icons.thumb_up_alt_outlined,
                                              color: Colors.black,
                                            );
                                          if (isliked)
                                            return const Icon(
                                              Icons.thumb_up_alt,
                                              color: Colors.red,
                                            );
                                        },
                                      )),
                                  Text(
                                    'Like',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 60),
                                    child: Icon(Icons.comment),
                                  ),
                                  Text(
                                    'Comment',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: Icon(Icons.share_outlined),
                                  ),
                                  Text(
                                    'Share',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        height: 380,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 16,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CircleAvatar(),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Post by NGO",
                                        style: GoogleFonts.roboto(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xff473D3D)),
                                      ),
                                      Text(
                                        "2 hours ago",
                                        style: GoogleFonts.roboto(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff473D3D)),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Text(
                                "we want to thank all of our donors for their generous contribution.",
                                style: GoogleFonts.roboto(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff5C5050)),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                height: 153,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/Rectangle 111.png"),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                height: 24,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text.rich(
                                    TextSpan(children: [
                                      TextSpan(
                                          text: "32 ",
                                          style: GoogleFonts.roboto(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xff857878))),
                                      TextSpan(
                                          text: "Likes",
                                          style: GoogleFonts.roboto(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xff857878)))
                                    ]),
                                  ),
                                  Text.rich(
                                    TextSpan(children: [
                                      TextSpan(
                                          text: "10 ",
                                          style: GoogleFonts.roboto(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xff857878))),
                                      TextSpan(
                                          text: "Comments",
                                          style: GoogleFonts.roboto(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xff857878)))
                                    ]),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Row(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: LikeButton(
                                        likeBuilder: (isliked) {
                                          if (!isliked)
                                            return const Icon(
                                              Icons.thumb_up_alt_outlined,
                                              color: Colors.black,
                                            );
                                          if (isliked)
                                            return const Icon(
                                              Icons.thumb_up_alt,
                                              color: Colors.red,
                                            );
                                        },
                                      )),
                                  Text(
                                    'Like',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 60),
                                    child: Icon(Icons.comment),
                                  ),
                                  InkWell(
                                    onTap: () => bottomSheetWidget(),
                                    child: Text(
                                      'Comment',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: Icon(Icons.share_outlined),
                                  ),
                                  Text(
                                    'Share',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EventScreen(),
                                ));
                          },
                          child: Container(
                            height: 120,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              children: [
                                Container(
                                  height: 120,
                                  width: 160,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/Rectangle 111.png"),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "   We are thrilled to host\n   this event.",
                                      style: GoogleFonts.roboto(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff473D3D)),
                                    ),
                                    Text(
                                      "    22-03-2023 at Jodhpur",
                                      style: GoogleFonts.roboto(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff706464)),
                                    ),
                                    Text(
                                      "    Upcoming",
                                      style: GoogleFonts.roboto(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff76AF3E)),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 120,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              Container(
                                height: 120,
                                width: 160,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/wp4323470-blood-donation-wallpapers.jpg"),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "  We are thrilled to host\n  this event.",
                                    style: GoogleFonts.roboto(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff473D3D)),
                                  ),
                                  Text(
                                    "  22-03-2023 at Jodhpur",
                                    style: GoogleFonts.roboto(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff706464)),
                                  ),
                                  Text(
                                    "  Upcoming",
                                    style: GoogleFonts.roboto(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff76AF3E)),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 120,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              Container(
                                height: 120,
                                width: 160,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/wp4323528-blood-donation-wallpapers.jpg"),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "  We are thrilled to host\n  this event.",
                                    style: GoogleFonts.roboto(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff473D3D)),
                                  ),
                                  Text(
                                    "  22-03-2023 at Jodhpur",
                                    style: GoogleFonts.roboto(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff706464)),
                                  ),
                                  Text(
                                    "  Recent",
                                    style: GoogleFonts.roboto(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffBF1D42)),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 120,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              Container(
                                height: 120,
                                width: 160,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/1901.sm002.005.TS.m000.c5.blood donation medicine.jpg"),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "  We are thrilled to host\n  this event.",
                                    style: GoogleFonts.roboto(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff473D3D)),
                                  ),
                                  Text(
                                    "  22-03-2023 at Jodhpur",
                                    style: GoogleFonts.roboto(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff706464)),
                                  ),
                                  Text(
                                    "  Recent",
                                    style: GoogleFonts.roboto(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffBF1D42)),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
              )
            ],
          ),
        ),
      ),
    );
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
                child: Column(children: [
                  Container(
                    height: 70,
                    width: 330,
                    decoration: BoxDecoration(color: Colors.red),
                  )
                ]));
          }),
    );
  }
}
