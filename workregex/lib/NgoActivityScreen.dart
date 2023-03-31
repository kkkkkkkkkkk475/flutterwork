
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        appBar: AppBar(
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
                height: double.maxFinite,
                width: MediaQuery.of(context).size.width,
                child: TabBarView(children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 15,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TextButton.icon(
                                      onPressed: () {},
                                      icon: Icon(Icons.thumb_up_alt_outlined,
                                          color: Color(0xff706464)),
                                      label: Text("Like",
                                          style: GoogleFonts.roboto(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xff473D3D)))),
                                  TextButton.icon(
                                      onPressed: () {},
                                      icon: Icon(Icons.message_outlined,
                                          color: Color(0xff706464)),
                                      label: Text("Comment",
                                          style: GoogleFonts.roboto(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xff473D3D)))),
                                  TextButton.icon(
                                      onPressed: () {},
                                      icon: Icon(Icons.share_outlined,
                                          color: Color(0xff706464)),
                                      label: Text("Share",
                                          style: GoogleFonts.roboto(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xff473D3D)))),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TextButton.icon(
                                      onPressed: () {},
                                      icon: Icon(Icons.thumb_up_alt_outlined,
                                          color: Color(0xff706464)),
                                      label: Text("Like",
                                          style: GoogleFonts.roboto(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xff473D3D)))),
                                  TextButton.icon(
                                      onPressed: () {},
                                      icon: Icon(Icons.message_outlined,
                                          color: Color(0xff706464)),
                                      label: Text("Comment",
                                          style: GoogleFonts.roboto(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xff473D3D)))),
                                  TextButton.icon(
                                      onPressed: () {},
                                      icon: Icon(Icons.share_outlined,
                                          color: Color(0xff706464)),
                                      label: Text("Share",
                                          style: GoogleFonts.roboto(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xff473D3D)))),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TextButton.icon(
                                      onPressed: () {},
                                      icon: Icon(Icons.thumb_up_alt_outlined,
                                          color: Color(0xff706464)),
                                      label: Text("Like",
                                          style: GoogleFonts.roboto(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xff473D3D)))),
                                  TextButton.icon(
                                      onPressed: () {},
                                      icon: Icon(Icons.message_outlined,
                                          color: Color(0xff706464)),
                                      label: Text("Comment",
                                          style: GoogleFonts.roboto(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xff473D3D)))),
                                  TextButton.icon(
                                      onPressed: () {},
                                      icon: Icon(Icons.share_outlined,
                                          color: Color(0xff706464)),
                                      label: Text("Share",
                                          style: GoogleFonts.roboto(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xff473D3D)))),
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
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (context) => EventScreen(),
                            //     ));
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
                                              "assets/Rectangle 131 (1).png"),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "We are thrilled to host\nthis event.",
                                      style: GoogleFonts.roboto(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff473D3D)),
                                    ),
                                    Text(
                                      "22-03-2023 at Jodhpur",
                                      style: GoogleFonts.roboto(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff706464)),
                                    ),
                                    Text(
                                      "Upcoming",
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
                                            "assets/Rectangle 131.png"),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "We are thrilled to host\nthis event.",
                                    style: GoogleFonts.roboto(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff473D3D)),
                                  ),
                                  Text(
                                    "22-03-2023 at Jodhpur",
                                    style: GoogleFonts.roboto(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff706464)),
                                  ),
                                  Text(
                                    "Upcoming",
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
                                            "assets/Rectangle 131.png"),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "We are thrilled to host\nthis event.",
                                    style: GoogleFonts.roboto(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff473D3D)),
                                  ),
                                  Text(
                                    "22-03-2023 at Jodhpur",
                                    style: GoogleFonts.roboto(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff706464)),
                                  ),
                                  Text(
                                    "Recent",
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
                                            "assets/Rectangle 131.png"),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "We are thrilled to host\nthis event.",
                                    style: GoogleFonts.roboto(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff473D3D)),
                                  ),
                                  Text(
                                    "22-03-2023 at Jodhpur",
                                    style: GoogleFonts.roboto(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff706464)),
                                  ),
                                  Text(
                                    "Recent",
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
}