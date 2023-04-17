
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workregex/available_blood.dart';
import 'package:workregex/not_available_blood.dart';

class BloodAvailabilityScreen extends StatefulWidget {
  const BloodAvailabilityScreen({super.key});

  @override
  State<BloodAvailabilityScreen> createState() =>
      _BloodAvailabilityScreenState();
}

class _BloodAvailabilityScreenState extends State<BloodAvailabilityScreen> {
  List screens =const [
    AvailableBloodScreen(),
    AvailableBloodScreen(),
    NotAvailableBloodScreen(),
    NotAvailableBloodScreen()
  ];
  // ignore: non_constant_identifier_names
  List  blood_availability = [
    {
      "Name": "Trust Blood Hospital",
      "Availability": "Available",
      "Type": "Charitable",
      "Blood Group": "Blood Group O+"
    },
    {
      "Name": "Govt. Blood Centre",
      "Availability": "Available",
      "Type": "Govt.",
      "Blood Group": "Blood Group O+"
    },
    {
      "Name": "Varun Blood Centre",
      "Availability": "Not Available",
      "Type": "Govt.",
      "Blood Group": "Blood Group O+"
    },
    {
      "Name": "Mahatma Blood Centre",
      "Availability": "Not Available",
      "Type": "Charitable",
      "Blood Group": "Blood Group O+"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xffEDEDED),
      appBar: AppBar(
        title: Text(
          "Blood Availability Search",
          style: GoogleFonts.roboto(
              fontSize: 19, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        elevation: 0,
        backgroundColor:const Color(0xffBF222B),
        actions: [
          IconButton(onPressed: () {}, icon:const Icon(Icons.notifications_none))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
         const   SizedBox(
              height: 16,
            ),
            ListView.builder(
              itemCount: blood_availability.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return screens[index];
                        },
                      ));
                    },
                    child: Container(
                      height: 69,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  blood_availability[index]["Name"],
                                  style: GoogleFonts.roboto(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color:const Color(0xff473D3D)),
                                ),
                                Builder(builder: (context) {
                                  if (blood_availability[index]
                                          ["Availability"] ==
                                      "Available") {
                                    return Text(
                                      blood_availability[index]["Availability"],
                                      style: GoogleFonts.roboto(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700,
                                          color:const Color(0xff76AF3E)),
                                    );
                                  } else
                                    // ignore: curly_braces_in_flow_control_structures
                                    return Text(
                                      blood_availability[index]["Availability"],
                                      style: GoogleFonts.roboto(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700,
                                          color:const Color(0xffBF1D42)),
                                    );
                                }),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  blood_availability[index]["Type"],
                                  style: GoogleFonts.roboto(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color:const Color(0xff706464)),
                                ),
                                Text(
                                  blood_availability[index]["Blood Group"],
                                  style: GoogleFonts.roboto(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color:const Color(0xff706464)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),);}
}