import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workregex/bottomn.dart';

import 'homedemo.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

extension PasswordValidator on String {
  // bool isValidPassword() {
  //   return RegExp(
  //           r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
  //       .hasMatch(this);
  // }
}

extension EmailValidator on String {
  // bool isValidEmail() {
  //   return RegExp(
  //           r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
  //       .hasMatch(this);
  // }
}

final List<String> state = <String>[
  "State",
  "Andaman and Nicobar",
  "Andhra Pradesh",
  "Arunachal Pradesh",
  "Assam",
  "Bihar",
  "Chandigarh",
  "Chhattisgarh",
  "Dadra and Nagar Haveli",
  "Daman and Diu",
  "Delhi",
  "Goa",
  "Gujrat",
  "Haryana",
  "Himachal Pradesh",
  "Jammu and Kashmir",
  "Jharkhand",
  "Karnataka",
  "Kerela",
  "Ladakh",
  "Lakshadweep",
  "Madhya Pradesh",
  "Maharashtra",
  "Manipur",
  "Meghalaya",
  "Mizoram",
  "Nagaland",
  "Odisha",
  "Pondicherry",
  "Punjab",
  "Rajasthan",
  "Sikkim",
  "Tamil Nadu",
  "Telangana",
  "Tripura",
  "Uttar Pradesh",
  "West Bengal"
];
final List<String> Blood = <String>[
  "Blood Group",
  "A+",
  "A-",
  "B+",
  "B-",
  "O+",
  "O-",
  "AB+",
  "AB-"
];

class _SignUpScreenState extends State<SignUpScreen> {
  bool isvisible = false;
  bool isAvisible = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController bloodGroupController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  String StateValue = state[0];
  String BloodValue = Blood[0];
  bool? ischecked = false;
  final _formKey = GlobalKey<FormState>();
  String? _password;

  final statekey = GlobalKey<FormFieldState>();
  final bloodkey = GlobalKey<FormFieldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 16,
              ),
              Text(
                'Complete your profile',
                style: GoogleFonts.roboto(
                    color: Color(0xFF303030),
                    fontSize: 34,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Please provide us your details below.',
                style: GoogleFonts.roboto(
                    color: Color(0xFF667685),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 24,
              ),
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Name";
                          }
                          return null;
                        },
                        controller: nameController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(16),
                          labelStyle: GoogleFonts.roboto(
                              color: Color(0xFF303030),
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(41),
                              borderSide: BorderSide(color: Color(0xFF667685))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF667685)),
                              borderRadius: BorderRadius.circular(41)),
                          labelText: "Name",
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        controller: emailController,
                        // validator: (value) {
                        //   if (value!.isEmpty) {
                        //     return "Enter Email";
                        //   } else if (!value.isValidEmail()) {
                        //     return "Enter Correct Email";
                        //   }
                        //   return null;
                        // },
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(16),
                          labelStyle: GoogleFonts.roboto(
                              color: Color(0xFF303030),
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(41),
                              borderSide: BorderSide(color: Color(0xFF667685))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF667685)),
                              borderRadius: BorderRadius.circular(41)),
                          labelText: "Email address",
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        controller: passwordController,
                        // validator: (value) {
                        //   if (value!.isEmpty) {
                        //     return "Enter Password";
                        //   } else if (!value.isValidPassword()) {
                        //     return "Password must contain one special character,one\nnumeric value, and first letter capital";
                        //   }
                        //   _password = value;

                        //   return null;
                        // },
                        obscureText: !isvisible,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(16),
                          suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                isvisible = !isvisible;
                              });
                            },
                            child: !isvisible
                                ? Icon(
                                    Icons.visibility_outlined,
                                    color: Color(0xFF323232),
                                  )
                                : Icon(
                                    Icons.visibility_off_outlined,
                                    color: Color(0xFF323232),
                                  ),
                          ),
                          labelStyle: GoogleFonts.roboto(
                              color: Color(0xFF303030),
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(41),
                              borderSide: BorderSide(color: Color(0xFF667685))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF667685)),
                              borderRadius: BorderRadius.circular(41)),
                          labelText: "Password",
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        controller: confirmController,
                        obscureText: !isAvisible,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(16),
                          suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                isAvisible = !isAvisible;
                              });
                            },
                            child: !isAvisible
                                ? Icon(
                                    Icons.visibility_outlined,
                                    color: Color(0xFF323232),
                                  )
                                : Icon(
                                    Icons.visibility_off_outlined,
                                    color: Color(0xFF323232),
                                  ),
                          ),
                          labelStyle: GoogleFonts.roboto(
                              color: Color(0xFF303030),
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(41),
                              borderSide: BorderSide(color: Color(0xFF667685))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF667685)),
                              borderRadius: BorderRadius.circular(41)),
                          labelText: "Confirm Password",
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter City";
                          }
                          return null;
                        },
                        controller: cityController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(16),
                          labelStyle: GoogleFonts.roboto(
                              color: Color(0xFF303030),
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(41),
                              borderSide: BorderSide(color: Color(0xFF667685))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF667685)),
                              borderRadius: BorderRadius.circular(41)),
                          labelText: "City",
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      FormField(
                        key: statekey,
                        validator: (value) {
                          if (StateValue == state[0]) {
                            return "Enter State";
                          }
                        },
                        builder: (FormFieldState) {
                          return InputDecorator(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(14),
                              labelStyle: GoogleFonts.roboto(
                                  color: Color(0xFF303030),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(41),
                                  borderSide:
                                      BorderSide(color: Color(0xFF667685))),
                              errorBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF667685)),
                                  borderRadius: BorderRadius.circular(41)),
                              labelText: "State",
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                value: StateValue,
                                isDense: true,
                                onChanged: (value) {
                                  setState(() {
                                    StateValue = value!;
                                  });
                                },
                                items: state.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value,
                                        style: GoogleFonts.roboto(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400)),
                                  );
                                }).toList(),
                              ),
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      FormField(
                        key: bloodkey,
                        validator: (value) {
                          print(BloodValue);
                          if (BloodValue == Blood[0]) {
                            return "Enter Blood Group";
                          }
                        },
                        builder: (FormFieldState) {
                          return InputDecorator(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(14),
                              labelStyle: GoogleFonts.roboto(
                                  color: Color(0xFF303030),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(41),
                                  borderSide:
                                      BorderSide(color: Color(0xFF667685))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF667685)),
                                  borderRadius: BorderRadius.circular(41)),
                              labelText: "Blood Group",
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                value: BloodValue,
                                isDense: true,
                                onChanged: (value) {
                                  setState(() {
                                    BloodValue = value!;
                                  });
                                },
                                items: Blood.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value,
                                        style: GoogleFonts.roboto(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400)),
                                  );
                                }).toList(),
                              ),
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        controller: addressController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Address";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(16),
                          labelStyle: GoogleFonts.roboto(
                              color: Color(0xFF303030),
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(41),
                              borderSide: BorderSide(color: Color(0xFF667685))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF667685)),
                              borderRadius: BorderRadius.circular(41)),
                          labelText: "Address",
                        ),
                      ),
                    ],
                  )),
              Row(
                children: [
                  Checkbox(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(2))),
                      value: ischecked,
                      activeColor: Colors.red,
                      tristate: false,
                      onChanged: (newBool) {
                        setState(() {
                          ischecked = newBool;
                        });
                      }),
                  Text(
                    'I agree the Terms & Conditions',
                    style: GoogleFonts.roboto(
                        fontSize: 12, fontWeight: FontWeight.w400),
                  )
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(
                      height: 50, width: MediaQuery.of(context).size.width),
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate() &&
                          statekey.currentState!.validate() &&
                          bloodkey.currentState!.validate() &&
                          ischecked == true) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Bottom(),
                            ));
                      }
                    },
                    child: Text(
                      'CONTINUE',
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
              SizedBox(
                height: 31,
              )
            ]),
          ),
        ));
  }
}
