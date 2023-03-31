import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Volunteer extends StatefulWidget {
  const Volunteer({super.key});

  @override
  State<Volunteer> createState() => _VolunteerState();
}

class _VolunteerState extends State<Volunteer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEDEDED),
      appBar: AppBar(
        title: Text(
          'Volunteer Request Form',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 19),
        ),
        leading: BackButton(color: Colors.white),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.notifications_none_outlined))
        ],
        backgroundColor: Color(0xffBF222B),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 15,
          ),
          Text(
            'Please Fill the remaining details                     ',
            style:
                GoogleFonts.roboto(fontSize: 19, fontWeight: FontWeight.w300),
          ),
          Stack(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 50,
                margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                padding: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(41),
                  shape: BoxShape.rectangle,
                ),
              ),
              Positioned(
                left: 50,
                top: 12,
                child: Container(
                  padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                  color: Color(0xffEDEDED),
                  child: Text(
                    'Name  ',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 50,
                margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                padding: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(41),
                  shape: BoxShape.rectangle,
                ),
              ),
              Positioned(
                left: 50,
                top: 12,
                child: Container(
                  padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                  color: Color(0xffEDEDED),
                  child: Text(
                    'Mobile Number',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 50,
                margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                padding: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(41),
                  shape: BoxShape.rectangle,
                ),
              ),
              Positioned(
                left: 50,
                top: 12,
                child: Container(
                  padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                  color: Color(0xffEDEDED),
                  child: Text(
                    'E Mail',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 50,
                margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                padding: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(41),
                  shape: BoxShape.rectangle,
                ),
              ),
              Positioned(
                left: 50,
                top: 12,
                child: Container(
                  padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                  color: Color(0xffEDEDED),
                  child: Text(
                    'State',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 50,
                margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                padding: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(41),
                  shape: BoxShape.rectangle,
                ),
              ),
              Positioned(
                left: 50,
                top: 12,
                child: Container(
                  padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                  color: Color(0xffEDEDED),
                  child: Text(
                    'District',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
          Text(
            'Please Attached required documents         ',
            style:
                GoogleFonts.roboto(fontSize: 19, fontWeight: FontWeight.w300),
          ),
          Container(
            width: double.infinity,
            height: 50,
            child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '  Any NGO Certificate',
                      style: GoogleFonts.roboto(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff5C5050)),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.attachment,
                          size: 30,
                          color: Color(0xff706464),
                        ))
                  ],
                )),
            margin: EdgeInsets.fromLTRB(20, 20, 20, 1),
            padding: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(41),
              shape: BoxShape.rectangle,
            ),
          ),
          Container(
            width: double.infinity,
            height: 50,
            child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '   Aadhar Card',
                      style: GoogleFonts.roboto(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff5C5050)),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.attachment,
                          size: 30,
                          color: Color(0xff706464),
                        ))
                  ],
                )),
            margin: EdgeInsets.fromLTRB(20, 20, 20, 1),
            padding: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(41),
              shape: BoxShape.rectangle,
            ),
          ),
          Container(
            width: double.infinity,
            height: 50,
            child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      ' PAN Card',
                      style: GoogleFonts.roboto(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff5C5050)),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.attachment,
                          size: 30,
                          color: Color(0xff706464),
                        ))
                  ],
                )),
            margin: EdgeInsets.fromLTRB(20, 20, 20, 1),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(41),
              shape: BoxShape.rectangle,
            ),
          ),
          Container(
            width: double.infinity,
            height: 50,
            child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      ' Other Documents ',
                      style: GoogleFonts.roboto(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff5C5050)),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.attachment,
                          size: 30,
                          color: Color(0xff706464),
                        ))
                  ],
                )),
            margin: EdgeInsets.fromLTRB(20, 20, 20, 1),
            padding: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(41),
              shape: BoxShape.rectangle,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 50,
            width: 350,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('SEARCH'),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  backgroundColor: Color(0xffBF222B)),
            ),
          )
        ]),
      ),
    );
  }
}
