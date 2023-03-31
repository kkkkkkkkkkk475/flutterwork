import 'package:flutter/material.dart';
import 'package:india/skip.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class contrycode extends StatefulWidget {
  const contrycode({super.key});

  @override
  State<contrycode> createState() => _contrycodeState();
}

class _contrycodeState extends State<contrycode> {
  var h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: h * 0.03,
                top: 100,
                right: h * 0.03,
              ),
              child: IntlPhoneField(
                  pickerDialogStyle: PickerDialogStyle(
                      countryNameStyle: TextStyle(fontSize: 15)),
                  onTap: () {},
                  style: TextStyle(fontSize: 14),
                  invalidNumberMessage: "",
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.amber),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.amber),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      hintText: "Enter your mobile number",
                      hintStyle: TextStyle(fontSize: 15)),
                  initialCountryCode: 'IN',
                  cursorColor: Colors.white,
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                  onSubmitted: (String verificationCode) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Skip()));
                  }),
            ),
            IntlPhoneField(
                pickerDialogStyle: PickerDialogStyle(
                    countryNameStyle: TextStyle(fontSize: 15)),
                onTap: () {},
                style: TextStyle(fontSize: 14),
                invalidNumberMessage: "",
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.amber),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.amber),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    hintText: "Enter your mobile number",
                    hintStyle: TextStyle(fontSize: 15)),
                initialCountryCode: 'IN',
                cursorColor: Colors.white,
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
                onSubmitted: (String verificationCode) {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Skip()));
                }),
            IntlPhoneField(
                pickerDialogStyle: PickerDialogStyle(
                    countryNameStyle: TextStyle(fontSize: 15)),
                onTap: () {},
                style: TextStyle(fontSize: 14),
                invalidNumberMessage: "",
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.amber),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.amber),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    hintText: "Enter your mobile number",
                    hintStyle: TextStyle(fontSize: 15)),
                initialCountryCode: 'IN',
                cursorColor: Colors.white,
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
                onSubmitted: (String verificationCode) {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Skip()));
                }),
            IntlPhoneField(
                pickerDialogStyle: PickerDialogStyle(
                    countryNameStyle: TextStyle(fontSize: 15)),
                onTap: () {},
                style: TextStyle(fontSize: 14),
                invalidNumberMessage: "",
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.amber),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.amber),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    hintText: "Enter your mobile number",
                    hintStyle: TextStyle(fontSize: 15)),
                initialCountryCode: 'IN',
                cursorColor: Colors.white,
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
                onSubmitted: (String verificationCode) {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Skip()));
                }),
            IntlPhoneField(
                pickerDialogStyle: PickerDialogStyle(
                    countryNameStyle: TextStyle(fontSize: 15)),
                onTap: () {},
                style: TextStyle(fontSize: 14),
                invalidNumberMessage: "",
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.amber),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.amber),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    hintText: "Enter your mobile number",
                    hintStyle: TextStyle(fontSize: 15)),
                initialCountryCode: 'IN',
                cursorColor: Colors.white,
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
                onSubmitted: (String verificationCode) {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Skip()));
                }),
            IntlPhoneField(
                pickerDialogStyle: PickerDialogStyle(
                    countryNameStyle: TextStyle(fontSize: 15)),
                onTap: () {},
                style: TextStyle(fontSize: 14),
                invalidNumberMessage: "",
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.amber),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.amber),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    hintText: "Enter your mobile number",
                    hintStyle: TextStyle(fontSize: 15)),
                initialCountryCode: 'IN',
                cursorColor: Colors.white,
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
                onSubmitted: (String verificationCode) {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Skip()));
                }),
            IntlPhoneField(
                pickerDialogStyle: PickerDialogStyle(
                    countryNameStyle: TextStyle(fontSize: 15)),
                onTap: () {},
                style: TextStyle(fontSize: 14),
                invalidNumberMessage: "",
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.amber),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.amber),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    hintText: "Enter your mobile number",
                    hintStyle: TextStyle(fontSize: 15)),
                initialCountryCode: 'IN',
                cursorColor: Colors.white,
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
                onSubmitted: (String verificationCode) {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Skip()));
                }),
            IntlPhoneField(
                pickerDialogStyle: PickerDialogStyle(
                    countryNameStyle: TextStyle(fontSize: 15)),
                onTap: () {},
                style: TextStyle(fontSize: 14),
                invalidNumberMessage: "",
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.amber),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.amber),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    hintText: "Enter your mobile number",
                    hintStyle: TextStyle(fontSize: 15)),
                initialCountryCode: 'IN',
                cursorColor: Colors.white,
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
                onSubmitted: (String verificationCode) {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Skip()));
                }),
          ],
        ),
      ),
    );
  }
}
