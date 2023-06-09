import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BloodDonationCamp2 extends StatefulWidget {
  const BloodDonationCamp2({super.key});

  @override
  State<BloodDonationCamp2> createState() => _BloodDonationCamp2State();
}

class _BloodDonationCamp2State extends State<BloodDonationCamp2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Blood Donation Camp",
          style: GoogleFonts.roboto(fontSize: 19, fontWeight: FontWeight.w700),
        ),
        backgroundColor: Color(0xffBF222B),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_outlined))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 156,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Blood Donation Camp",
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff473D3D)),
                        ),
                        Text(
                          "Jodhpur",
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xff473D3D)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Organized By Youth Samiti",
                          style: GoogleFonts.roboto(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff706464)),
                        ),
                        Text(
                          "08 AM - 04 PM",
                          style: GoogleFonts.roboto(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff706464)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        const Icon(Icons.location_on_outlined,
                            size: 13, color: Color(0xffBF222B)),
                        Text(
                          "Village -Khichan, Phalodi, Jodhpur, Rajasthan",
                          style: GoogleFonts.roboto(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff857878)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8.33,
                    ),
                    Row(
                      children: [
                        const Icon(Icons.phone_outlined,
                            size: 13, color: Color(0xffBF222B)),
                        Text(
                          "+91 91667120102",
                          style: GoogleFonts.roboto(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff857878)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8.33,
                    ),
                    Row(
                      children: [
                        const Icon(Icons.mail_outline,
                            size: 13, color: Color(0xffBF222B)),
                        Text(
                          "trustblood@gmail.com",
                          style: GoogleFonts.roboto(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff857878)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 23),
        child: ConstrainedBox(
          constraints: BoxConstraints.tightFor(
              height: 54, width: MediaQuery.of(context).size.width),
          child: ElevatedButton(
            onPressed: () {},
            // ignore: sort_child_properties_last
            child: Text(
              'REGISTER AS VOLUNTARY DONOR',
              style:
                  GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFBF222B),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(69))),
          ),
        ),
      ),
    );
  }
}
