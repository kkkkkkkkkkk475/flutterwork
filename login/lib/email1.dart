// import 'dart:convert';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupDetails extends StatefulWidget {
  const SignupDetails({super.key});

  @override
  State<SignupDetails> createState() => _SignupDetailsState();
}

class _SignupDetailsState extends State<SignupDetails> {
  FirebaseFirestore? firebaseFirestore;

  final namecontroller = TextEditingController();
  final addressController = TextEditingController();
  final mobileNoController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String? locality;
  @override
  void initState() {
    firebaseFirestore = FirebaseFirestore.instance;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          title: Center(
              child: Text("Signup",
                  style: GoogleFonts.roboto(fontWeight: FontWeight.w500))),
          backgroundColor: Colors.deepPurple,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
                key: _formKey,
                child: Column(children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: TextFormField(
                          keyboardType: TextInputType.name,
                          controller: namecontroller,
                          decoration: InputDecoration(
                              hintText: "Name",
                              hintStyle: GoogleFonts.roboto()))),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: TextFormField(
                          keyboardType: TextInputType.phone,
                          maxLength: 6,
                          onChanged: (va) {
                            if (va.length == 6) {
                              Dio()
                                  .get(
                                      'https://api.postalpincode.in/pincode/$va')
                                  .then((value) {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      List data = value.data;
                                      log(data.length.toString());
                                      return Material(
                                        child: ListView.builder(
                                          itemCount:
                                              data[0]['PostOffice'].length,
                                          itemBuilder: (context, index) {
                                            return InkWell(
                                              onTap: () {
                                                Navigator.pop(context);
                                                locality = data[0]['PostOffice']
                                                    [index]['Name'];
                                                addressController.text =
                                                    locality!;
                                                setState(() {});
                                              },
                                              child: Column(
                                                children: [
                                                  Text(data[0]['PostOffice']
                                                      [index]['Name']),
                                                  Divider(),
                                                ],
                                              ),
                                            );
                                          },
                                        ),
                                      );
                                    });
                              });
                            }
                          },
                          decoration: InputDecoration(
                              hintText: "enter pincode no",
                              hintStyle: GoogleFonts.roboto()))),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: TextFormField(
                          keyboardType: TextInputType.phone,
                          controller: mobileNoController,
                          decoration: InputDecoration(
                              hintText: "enter pincode no",
                              hintStyle: GoogleFonts.roboto()))),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: TextFormField(
                          keyboardType: TextInputType.streetAddress,
                          controller: addressController,
                          minLines: 4,
                          maxLines: 4,
                          decoration: InputDecoration(
                              hintText: "Address",
                              hintStyle: GoogleFonts.roboto()))),
               
                ]))
          ],
        ));
  }
}
