import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class Re extends StatefulWidget {
  const Re({super.key});

  @override
  State<Re> createState() => _ReState();
}

class _ReState extends State<Re> {
  bool isVisible = true;
  bool value = false;

  bool get val => false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Create Account    ',
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(70))),
            margin: EdgeInsets.symmetric(horizontal: 40),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: ' User name',
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(70))),
            margin: EdgeInsets.symmetric(horizontal: 40),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Mobile No.',
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(70))),
            margin: EdgeInsets.symmetric(horizontal: 40),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: ' EMAIL',
                suffixIcon: Icon(
                  Icons.email,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(70))),
            margin: EdgeInsets.symmetric(horizontal: 40),
            child: TextField(
              obscureText: isVisible,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: ' PASSWORD',
                suffixIcon: eyeButton(),
              ),
            ),
          ),
          Container(
            height: 60,
            margin: EdgeInsets.symmetric(
              horizontal: 30,
            ),
            decoration: BoxDecoration(color: Colors.white),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                // contentPadding: EdgeInsets.all(30),
                prefixIcon: CountryCodePicker(),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Read and agree the '),
              Text(
                'Term & conditions ',
                style: TextStyle(
                    color: Colors.red, decoration: TextDecoration.underline),
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          ConstrainedBox(
              constraints: BoxConstraints.tightFor(height: 50, width: 300),
              child: ElevatedButton(onPressed: () {}, child: Text('Rigester'))),
        ],
      ),
    );
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
