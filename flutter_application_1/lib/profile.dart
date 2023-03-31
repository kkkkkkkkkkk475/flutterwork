import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:country_state_city_picker/country_state_city_picker.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: BackButton(color: Colors.black),
        title: Text(
          'add your city🛒',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          SelectState(
            // style: TextStyle(color: Colors.red),
            onCountryChanged: (value) {
              setState(() {
                var countryValue = value;
              });
            },
            onStateChanged: (value) {
              setState(() {
                var stateValue = value;
              });
            },
            onCityChanged: (value) {
              setState(() {
                var cityValue = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
