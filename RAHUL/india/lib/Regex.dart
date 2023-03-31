import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

class re extends StatefulWidget {
  const re({super.key});

  @override
  State<re> createState() => _reState();
}

class _reState extends State<re> {
  String countryflag = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: Row(
              children: [
                TextButton(
                    onPressed: () {
                      showCountryPicker(
                          context: context,
                          onSelect: ((value) {
                             print(value.countryCode.toString());
                            print(value.phoneCode.toString());
                            countryflag = value.displayName.toString();
                            setState(() {});
                          }));
                    },
                    child: Text('Select country')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
