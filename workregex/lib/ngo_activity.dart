
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workregex/event.dart';

class NgoActivityScreen extends StatefulWidget {
  const NgoActivityScreen({super.key});

  @override
  State<NgoActivityScreen> createState() => _NgoActivityScreenState();
}

class _NgoActivityScreenState extends State<NgoActivityScreen> {
  // ignore: non_constant_identifier_names
  List all_post = [
    {
      "image": "assets/Rectangle 111.png",
      "title": "Post by NGO",
      "time": "2 Hours ago",
      "content":
          "we want to thank all of our donors for their generous contribution.",
      "body": "assets/Rectangle 111.png"
    },
    {
      "image": "assets/Rectangle 111.png",
      "title": "Post by NGO",
      "time": "2 Hours ago",
      "content":
          "we want to thank all of our donors for their generous contribution.",
      "body": "assets/Rectangle 111.png"
    },
    {
      "image": "assets/Rectangle 111.png",
      "title": "Post by NGO",
      "time": "2 Hours ago",
      "content":
          "we want to thank all of our donors for their generous contribution.",
      "body": "assets/Rectangle 111.png",
    },
  ];
// ignore: non_constant_identifier_names
  List ngo_event = [
    {
      "image": "assets/Rectangle 111.png",
      "title": "We are thrilled to host\nthis event.",
      "date": "22-03-2023 at Jodhpur",
      "status": "Upcoming"
    },
    {
      "image": "assets/Rectangle 111.png",
      "title": "We are thrilled to host\nthis event.",
      "date": "22-03-2023 at Jodhpur",
      "status": "Upcoming"
    },
    {
      "image": "assets/Rectangle 111.png",
      "title": "We are thrilled to host\nthis event.",
      "date": "22-03-2023 at Jodhpur",
      "status": "Recent"
    },
    {
      "image": "assets/Rectangle 111.png",
      "title": "We are thrilled to host\nthis event.",
      "date": "22-03-2023 at Jodhpur",
      "status": "Recent"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
                elevation: 0,
                title: Text(
                  "NGO Activity",
                  style: GoogleFonts.roboto(
                      fontSize: 19, fontWeight: FontWeight.w700),
                ),
                backgroundColor:const Color(0xffBF222B),
                bottom: PreferredSize(
                  preferredSize: Size(MediaQuery.of(context).size.width, 50),
                  child: Container(
                    height: 60,
                    color: Colors.white,
                    child: TabBar(
                        indicatorColor: Colors.red,
                        labelStyle: GoogleFonts.roboto(
                            fontSize: 16, fontWeight: FontWeight.w700),
                        labelColor:const Color(0xff473D3D),
                        tabs:const [
                          Tab(
                            text: "All Post",
                          ),
                          Tab(
                            text: "NGO Event",
                          )
                        ]),
                  ),
                ),
                actions: [
                  IconButton(
                      onPressed: () {},
                      icon:const Icon(Icons.notifications_outlined))
                ]),
            body: TabBarView(children: [
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: all_post.length,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Container(
                            height: 366,
                            width: MediaQuery.of(context).size.width,
                            decoration:const BoxDecoration(color: Colors.white),
                            child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                    const  SizedBox(
                                        height: 10,
                                      ),
                                      Row(children: [const
                                        CircleAvatar(),
                                     const   SizedBox(
                                          width: 8,
                                        ),
                                        Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                all_post[index]["title"],
                                                style: GoogleFonts.roboto(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w700,
                                                    color:const Color(0xff473D3D)),
                                              ),
                                              Text(
                                                all_post[index]["time"],
                                                style: GoogleFonts.roboto(
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.w400,
                                                    color:const Color(0xff706464)),
                                              )
                                            ])
                                      ]),
                                const      SizedBox(
                                        height: 16,
                                      ),
                                      Text(
                                        all_post[index]["content"],
                                        style: GoogleFonts.roboto(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color:const Color(0xff5C5050)),
                                      ),
                                  const   SizedBox(
                                        height: 8,
                                      ),
                                      Container(
                                        height: 153,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    all_post[index]["body"]),
                                                fit: BoxFit.cover)),
                                      ),
                                    const  SizedBox(
                                        height: 24,
                                      ),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text.rich(TextSpan(children: [
                                              TextSpan(
                                                  text: "32 ",
                                                  style: GoogleFonts.roboto(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color:
                                                          Color(0xff857878))),
                                              TextSpan(
                                                  text: "Likes",
                                                  style: GoogleFonts.roboto(
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color:const Color(0xff857878)))
                                            ])),
                                            Text.rich(TextSpan(children: [
                                              TextSpan(
                                                  text: "10 ",
                                                  style: GoogleFonts.roboto(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color:
                                                         const Color(0xff857878))),
                                              TextSpan(
                                                  text: "Comments",
                                                  style: GoogleFonts.roboto(
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color:const Color(0xff857878)))
                                            ]))
                                          ]),
                                  const    SizedBox(
                                        height: 13,
                                      ),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            TextButton.icon(
                                                onPressed: () {},
                                                icon:const Icon(
                                                    Icons.thumb_up_alt_outlined,
                                                    color: Color(0xff706464)),
                                                label: Text("Like",
                                                    style: GoogleFonts.roboto(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color:const Color(
                                                            0xff473D3D)))),
                                            TextButton.icon(
                                                onPressed: () {},
                                                icon:const Icon(
                                                    Icons.message_outlined,
                                                    color: Color(0xff706464)),
                                                label: Text("Comment",
                                                    style: GoogleFonts.roboto(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color:const Color(
                                                            0xff473D3D)))),
                                            TextButton.icon(
                                                onPressed: () {},
                                                icon:const Icon(Icons.share_outlined,
                                                    color: Color(0xff706464)),
                                                label: Text("Share",
                                                    style: GoogleFonts.roboto(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color:
                                                           const Color(0xff473D3D))))
                                          ])
                                    ]))));
                  }),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(children: [
                   const SizedBox(
                      height: 15,
                    ),
                    ListView.builder(
                        physics:const NeverScrollableScrollPhysics(),
                        itemCount: ngo_event.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>const EventScreen(),
                                      ));
                                },
                                child: Container(
                                    height: 120,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                              height: 120,
                                              width: 160,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  child: Image.asset(
                                                    ngo_event[index]["image"],
                                                    fit: BoxFit.cover,
                                                  ))),
                                       const   SizedBox(
                                            width: 16,
                                          ),
                                          Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Text(ngo_event[index]["title"],
                                                    style: GoogleFonts.roboto(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color:
                                                           const Color(0xff473D3D))),
                                                Text(ngo_event[index]["date"],
                                                    style: GoogleFonts.roboto(
                                                        fontSize: 11,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color:
                                                          const  Color(0xff706464))),
                                                Builder(builder: (context) {
                                                  if (ngo_event[index]
                                                          ["status"] ==
                                                      "Recent") {
                                                    return Text(
                                                        ngo_event[index]
                                                            ["status"],
                                                        style: GoogleFonts.roboto(
                                                            fontSize: 13,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:const Color(
                                                                0xffBF1D42)));
                                                  } else {
                                                    return Text(
                                                        ngo_event[index]
                                                            ["status"],
                                                        style: GoogleFonts.roboto(
                                                            fontSize: 13,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:const Color(
                                                                0xff76AF3E)));
                                                  }
                                                })
                                              ])
                                        ])),
                              ));
                        })
                  ]))
       ])));
}
}