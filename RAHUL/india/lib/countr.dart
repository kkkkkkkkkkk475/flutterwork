import 'package:country_code_picker/country_code_picker.dart';
import 'package:country_phone_code_picker/core/country_phone_code_picker_widget.dart';
import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/countries.dart';

class contr extends StatefulWidget {
  const contr({super.key});

  @override
  State<contr> createState() => _contrState();
}

class _contrState extends State<contr> {
  bool isVisible = true;
  bool value = false;

  bool get val => false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.blue[200],
        body: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            Text(
              'LOG In   ',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50),
              child: TextField(
                decoration: InputDecoration(hintText: 'User Name'),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50),
              child: TextField(
                obscureText: isVisible,
                decoration: InputDecoration(
                  hintText: 'Password',
                  suffixIcon: eyeButton(),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
                onTap: () {},
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w300),
                )),
            SizedBox(
              height: 30,
            ),
            ConstrainedBox(
                constraints: BoxConstraints.tightFor(height: 50, width: 300),
                child: ElevatedButton(onPressed: () {}, child: Text('Login'))),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Does not have account?'),
                Text(
                  'Sign in',
                  style: TextStyle(decoration: TextDecoration.underline),
                )
              ],
            ),
          ],
        ));
  }

  Widget eyeButton() {
    return InkWell(
        onTap: () {
          setState(() {
            isVisible = !isVisible;
          });
        },
        child: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: isVisible
                ? const Icon(
                    Icons.visibility_off,
                    color: Colors.black,
                  )
                : const Icon(
                    Icons.visibility,
                    color: Colors.black,
                  )));
  }
}
