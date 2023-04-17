import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'auth_controller.dart';

class UiHelper {
  static List<Widget> generateRadioList(List data, groupValue, onChanged) {
    return List.generate(
      data.length,
      (index) => RadioListTile(
          value: data[index]['index'],
          title: Text('RadioButton $index'),
          subtitle: Text(data[index]['name']),
          groupValue: groupValue,
          onChanged: onChanged),
    );
  }

  static List<Widget> generateCheckboxList(
      List data, int groupValue, Function(int, bool?) onChanged) {
    return List.generate(
      data.length,
      (index) => Center(
        child: Container(
          height: 40,
          width: 200,
          child: CheckboxListTile(
              value: data[index]['selected'],
              title: Text('RadioButton $index'),
              subtitle: Text(data[index]['name']),
              selected: groupValue == index,
              onChanged: (value) {
                onChanged(index, value);
              }),
        ),
      ),
    );
  }

  static Widget buttonWithWhiteText(String text, Function() onTap, context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 52,
        margin: const EdgeInsets.symmetric(horizontal: 16),
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Theme.of(context).disabledColor),
        child: Center(
            child: Text(
          text.toUpperCase(),
          style: GoogleFonts.roboto(
              fontSize: 13,
              fontWeight: FontWeight.w900,
              color: Theme.of(context).textTheme.bodyText1?.color),
        )),
      ),
    );
  }

  static ThemeData theme(ThemeEnum themeEnum) {
    switch (themeEnum) {
      case ThemeEnum.Light:
        return ThemeData(
          primaryColor: Colors.black,
          scaffoldBackgroundColor: Colors.white,
          textTheme: TextTheme(bodyText1: TextStyle(color: Colors.black)),
          iconTheme: const IconThemeData(color: Colors.black),
          primaryIconTheme: const IconThemeData(color: Colors.black),
        );
      case ThemeEnum.Dark:
        return ThemeData(
          primaryColor: Colors.white,
          
          scaffoldBackgroundColor: Colors.black,
          textTheme: TextTheme(bodyText1: TextStyle(color: Colors.white)),
          iconTheme: const IconThemeData(color: Colors.white),
          primaryIconTheme: const IconThemeData(color: Colors.white),
        );
      case ThemeEnum.xyz:
        return ThemeData(
          primaryColor: Colors.brown,
          scaffoldBackgroundColor: Colors.yellow,
          textTheme: TextTheme(bodyText1: TextStyle(color: Colors.brown)),
          iconTheme: const IconThemeData(color: Colors.brown),
          primaryIconTheme: const IconThemeData(color: Colors.brown),
        );
    }
  }
}
