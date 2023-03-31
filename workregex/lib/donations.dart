import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'BloodAvailabilityScreen.dart';

class DonationScreen extends StatefulWidget {
  const DonationScreen({super.key});

  @override
  State<DonationScreen> createState() => _DonationScreenState();
}

class _DonationScreenState extends State<DonationScreen>
    with TickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    TabController _tabController = TabController(length: 2, vsync: this);
    // TODO: implement initState
    super.initState();
  }

  TextEditingController nameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController pinCodeController = TextEditingController();
  TextEditingController townController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController bloodGroupController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  GlobalKey<ScaffoldState> key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        key: key,
        appBar: AppBar(
          elevation: 0,
          title: Text(
            "Donation",
            style:
                GoogleFonts.roboto(fontSize: 19, fontWeight: FontWeight.w700),
          ),
          backgroundColor: Color(0xffBF222B),
          leading: IconButton(
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => AllScreen(),
                //     ));
              },
              icon: Icon(Icons.arrow_back)),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TabBar(
                  indicatorColor: Color(0xffBF222B),
                  controller: _tabController,
                  labelStyle: GoogleFonts.roboto(
                      fontSize: 16, fontWeight: FontWeight.w700),
                  labelColor: Color(0xff473D3D),
                  tabs: [
                    Tab(
                      text: "Looking For Blood",
                    ),
                    Tab(
                      text: "Donate Blood",
                    )
                  ]),
              Container(
                height: MediaQuery.of(context).size.height,
                width: double.maxFinite,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 17,
                          ),
                          Text(
                            "Please Enter details of the person who need\nblood.",
                            style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff857878)),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Form(
                              child: Column(
                            children: [
                              TextFormField(
                                controller: nameController,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(16),
                                  hintStyle: GoogleFonts.roboto(
                                      color: Color(0xFF706464),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  hintText: "Enter Name",
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              TextFormField(
                                controller: mobileController,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(16),
                                  hintStyle: GoogleFonts.roboto(
                                      color: Color(0xFF706464),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  hintText: "Enter Mobile Number",
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              TextFormField(
                                controller: emailController,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(16),
                                  hintStyle: GoogleFonts.roboto(
                                      color: Color(0xFF706464),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  hintText: "Enter Email Address (Optional)",
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              TextFormField(
                                controller: stateController,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(16),
                                  hintStyle: GoogleFonts.roboto(
                                      color: Color(0xFF706464),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
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
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
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
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  hintText: "Enter Pin Code",
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              TextFormField(
                                controller: townController,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(16),
                                  hintStyle: GoogleFonts.roboto(
                                      color: Color(0xFF706464),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  hintText: "Enter Town Name",
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              TextFormField(
                                controller: dateController,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(16),
                                  hintStyle: GoogleFonts.roboto(
                                      color: Color(0xFF706464),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  hintText: "Select Date",
                                ),
                              ),
                            ],
                          )),
                          SizedBox(
                            height: 24,
                          ),
                          Center(
                            child: ConstrainedBox(
                              constraints: BoxConstraints.tightFor(
                                  height: 50,
                                  width: MediaQuery.of(context).size.width),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            BloodAvailabilityScreen(),
                                      ));
                                },
                                child: Text(
                                  'SEARCH',
                                  style: GoogleFonts.roboto(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFFBF222B),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(69))),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 17,
                          ),
                          Text(
                            "Please Enter details of the person who wants\nto donate blood.",
                            style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff857878)),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Form(
                              child: Column(
                            children: [
                              TextFormField(
                                controller: nameController,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(16),
                                  hintStyle: GoogleFonts.roboto(
                                      color: Color(0xFF706464),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  hintText: "Enter Name",
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              TextFormField(
                                controller: mobileController,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(16),
                                  hintStyle: GoogleFonts.roboto(
                                      color: Color(0xFF706464),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  hintText: "Enter Mobile Number",
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              TextFormField(
                                controller: emailController,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(16),
                                  hintStyle: GoogleFonts.roboto(
                                      color: Color(0xFF706464),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  hintText: "Enter Email Address (Optional)",
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              TextFormField(
                                controller: stateController,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(16),
                                  hintStyle: GoogleFonts.roboto(
                                      color: Color(0xFF706464),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
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
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
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
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  hintText: "Enter Pin Code",
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              TextFormField(
                                controller: townController,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(16),
                                  hintStyle: GoogleFonts.roboto(
                                      color: Color(0xFF706464),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  hintText: "Enter Town Name",
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              TextFormField(
                                controller: dateController,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(16),
                                  hintStyle: GoogleFonts.roboto(
                                      color: Color(0xFF706464),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  hintText: "Select Date",
                                ),
                              ),
                            ],
                          )),
                          SizedBox(
                            height: 24,
                          ),
                          Center(
                            child: ConstrainedBox(
                              constraints: BoxConstraints.tightFor(
                                  height: 50,
                                  width: MediaQuery.of(context).size.width),
                              child: ElevatedButton(
                                onPressed: () {
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //       builder: (context) =>
                                  //           BloodDonationScreen(),
                                  //     ));
                                },
                                child: Text(
                                  'SEARCH',
                                  style: GoogleFonts.roboto(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFFBF222B),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(69))),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
