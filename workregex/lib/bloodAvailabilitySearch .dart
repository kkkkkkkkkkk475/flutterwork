import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'BloodAvailabilityScreen.dart';

class B extends StatefulWidget {
  const B({super.key});

  @override
  State<B> createState() => _BState();
}

class _BState extends State<B> {
  TextEditingController pinCodeController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController bloodGroupController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(leading: BackButton(),
        title: Text(
          "Blood Availability Search",
          style: GoogleFonts.roboto(
              fontSize: 19, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        elevation: 0,
        backgroundColor: Color(0xffBF222B),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            Form(
                child: Column(
              children: [
                TextFormField(
                  controller: stateController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(16),
                    hintStyle: GoogleFonts.roboto(
                        color: Color(0xFF706464),
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF706464)),
                        borderRadius: BorderRadius.circular(41)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF706464)),
                        borderRadius: BorderRadius.circular(41)),
                    hintText: "Select State",
                  ),
                ),
                SizedBox(
                  height: 16,
                  
                ),
                TextFormField(
                  controller: cityController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(16),
                    hintStyle: GoogleFonts.roboto(
                        color: Color(0xFF706464),
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF706464)),
                        borderRadius: BorderRadius.circular(41)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF706464)),
                        borderRadius: BorderRadius.circular(41)),
                    hintText: "Select District",
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: pinCodeController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(16),
                    hintStyle: GoogleFonts.roboto(
                        color: Color(0xFF706464),
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF706464)),
                        borderRadius: BorderRadius.circular(41)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF706464)),
                        borderRadius: BorderRadius.circular(41)),
                    hintText: "Enter Pin Code",
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: bloodGroupController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(16),
                    hintStyle: GoogleFonts.roboto(
                        color: Color(0xFF706464),
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF706464)),
                        borderRadius: BorderRadius.circular(41)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF706464)),
                        borderRadius: BorderRadius.circular(41)),
                    hintText: "Select Blood Group",
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(16),
                    hintStyle: GoogleFonts.roboto(
                        color: Color(0xFF706464),
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF706464)),
                        borderRadius: BorderRadius.circular(41)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF706464)),
                        borderRadius: BorderRadius.circular(41)),
                    hintText: "Select Blood Component",
                  ),
                ),
              ],
            )),
            SizedBox(
              height: 281,
            ),
            Center(
              child: ConstrainedBox(
                constraints: BoxConstraints.tightFor(
                    height: 50, width: MediaQuery.of(context).size.width),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BloodAvailabilityScreen(),
                        ));
                  },
                  child: Text(
                    'SEARCH',
                    style: GoogleFonts.roboto(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFBF222B),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(69))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
