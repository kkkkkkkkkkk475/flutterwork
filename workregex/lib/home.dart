import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
import 'package:workregex/become_a_volunteer.dart';
import 'package:workregex/blood_availability_search.dart';
import 'package:workregex/ngo_activity.dart';
import 'package:workregex/ngo_program.dart';
import 'package:workregex/ui_utils.dart';
import 'blood_donation_camp.dart';
import 'donation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List screens =const [
    BloodAvailabilitySearch(),
    BecomeVolunteerScreen(),
    NgoActivityScreen(),
    DonationScreen(),
    BloodDonationCampScreen()
  ];
  var rating = 0.0;
  List images = [
    "assets/man-suit-standing-office-with-clipboard-pointing-poster-with-words.jpg",
    "assets/man-suit-standing-office-with-clipboard-pointing-poster-with-words.jpg",
    "assets/man-suit-standing-office-with-clipboard-pointing-poster-with-words.jpg"
  ];
  List text_icon = [
    {"icon": Icons.search, "text": "Blood Availability Search"},
    {"icon": Icons.manage_accounts_outlined, "text": "Become a\nVolunteer"},
    {"icon": Icons.video_library_outlined, "text": "NGO Activity"},
    {"icon": Icons.bloodtype_outlined, "text": "Blood\nDonation"},
    {"icon": Icons.campaign_outlined, "text": "Blood Donation\nCamp"}
  ];

  GlobalKey<ScaffoldState> key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          elevation: 0,
          backgroundColor: Color(0xffBF222B),
          onPressed: () {},
          child:const Icon(
            Icons.phone_in_talk_outlined,
          ),
        ),
        key: key,
        drawer: UiUtilsScreen.drawer(),
        appBar: UiUtilsScreen.appBar(key, context),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 168,
              decoration:
                const  BoxDecoration(color: Color.fromARGB(255, 228, 228, 228)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                 const   SizedBox(
                      height: 16,
                    ),
                    Image.asset("assets/Rectangle 31.png"),
                  const  SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 123,
              width: double.infinity,
              decoration:
               const   BoxDecoration(color: Color.fromARGB(255, 241, 238, 238)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  const  SizedBox(
                      height: 16,
                    ),
                    Text(
                      'NGO Has Been Upto',
                      style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color:const Color(0xff473D3D)),
                    ),
              const      SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 67,
                          width: 171,
                          // ignore: sort_child_properties_last
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Number of Volunteer',
                                style: GoogleFonts.roboto(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color:const Color(0xffFFFFFF),
                                ),
                              ),
                              // ignore: prefer_const_constructors
                              Text(
                                '10,000',
                                style:const TextStyle(
                                    fontSize: 28,
                                    color: Color(0xffFFFFFF),
                                    fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              color:const Color(0xffBF222B),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                    const    SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 67,
                          width: 171,
                          // ignore: sort_child_properties_last
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Number of Donation',
                                style: GoogleFonts.roboto(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffFFFFFF),
                                ),
                              ),
                              // ignore: prefer_const_constructors
                              Text(
                                '110,000',
                                style:const TextStyle(
                                    fontSize: 28,
                                    color: Color(0xffFFFFFF),
                                    fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              color:const Color(0xffBF222B),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
                height: 323,
                width: 360,
                color: Colors.white,
                child: Column(children: [
               const   SizedBox(
                    height: 17,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'NGO Program',
                        style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color:const Color(0xff473D3D)),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>const NgoProgramScreen(),
                              ));
                        },
                        child: Text(
                          'See All   ',
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff0E4EAE)),
                        ),
                      ),
                    ],
                  ),
            const      SizedBox(
                    height: 11,
                  ),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: text_icon.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return screens[index];
                              },
                            ));
                          },
                          child: Container(
                            height: 100,
                            width: 128,
                            decoration:const BoxDecoration(color: Colors.white),
                            child: Column(
                              children: [
                                Icon(text_icon[index]["icon"],
                                    color:const Color(0xffBF222B)),
                                Text(
                                  text_icon[index]["text"],
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.roboto(
                                      height: 1.2,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
              const    SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 184,
                    child: PageView.builder(
                      itemCount: images.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(images[index]))),
                        );
                      },
                    ),
                  ),
                 const SizedBox(
                    height: 16,
                  )
                ])),
          const  SizedBox(
              height: 8,
            ),
            Container(
              height: 122,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                 const   SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Latest News",
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color:const Color(0xff473D3D)),
                        ),
                        Text(
                          "See All",
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color:const Color(0xff0E4EAE)),
                        )
                      ],
                    ),
              const      SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: 58,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color:const Color(0xffEBE7E7),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                       const   Padding(
                            padding:  EdgeInsets.only(left: 7),
                            child: CircleAvatar(
                                radius: 21,
                                backgroundImage:
                                    AssetImage("assets/Ellipse 16.png")),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: Text(
                              "Simply dummy text of the printing and type\nsetting industry.",
                              style: GoogleFonts.roboto(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color:const Color(0xff473D3D)),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          const  SizedBox(
              height: 8,
            ),
            // ignore: sized_box_for_whitespace
            Container(
              height: 343,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
             const       SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Feedback",
                      style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color:const Color(0xff473D3D)),
                    ),
                  const  SizedBox(
                      height: 16,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color:const Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                         const   SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Feel free to share your feedback with us",
                              style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color:const Color(0xff473D3D)),
                            ),
                        const    SizedBox(
                              height: 9,
                            ),
                            SmoothStarRating(
                                allowHalfRating: false,
                                onRatingChanged: (v) {
                                  rating = v;
                                  setState(() {});
                                },
                                starCount: 5,
                                rating: rating,
                                size: 40.0,
                                filledIconData: Icons.star,
                                halfFilledIconData: Icons.star_border,
                                color: Colors.amber,
                                borderColor: Colors.amber,
                                spacing: 0.0),
                          const  SizedBox(
                              height: 9,
                            ),
                            Text(
                              "Tell us about your experience",
                              style: GoogleFonts.roboto(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color:const Color(0xff998D8D)),
                            ),
                          const  SizedBox(
                              height: 8,
                            ),
                            TextFormField(
                                maxLines: 4,
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                        const  BorderSide(color: Color(0xff998D8D)),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide:const BorderSide(
                                            color: Color(0xff998D8D)),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    hintText: "Write here",
                                    hintStyle: GoogleFonts.roboto(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                        color:const Color(0xff998D8D)))),
                            
                         const   SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ConstrainedBox(
                                  constraints:const BoxConstraints.tightFor(
                                      height: 46, width: 81),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          backgroundColor: Colors.white),
                                      onPressed: () {},
                                      child: Text(
                                        "Cancel",
                                        style: GoogleFonts.roboto(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color:const Color(0xff473D3D)),
                                      )),
                                ),
                           const     SizedBox(
                                  width: 16,
                                ),
                                ConstrainedBox(
                                  constraints:const BoxConstraints.tightFor(
                                      height: 46, width: 156),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          backgroundColor:const Color(0xffADA2A2)),
                                      onPressed: () {},
                                      child: Text(
                                        "Submit Feedback",
                                        style: GoogleFonts.roboto(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white),
                                      )),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ]),
 ));}
}