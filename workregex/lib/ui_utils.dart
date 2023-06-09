import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workregex/notification.dart';

class UiUtilsScreen {
  static Widget drawer() {
    return SizedBox(
      width: 238,
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(left: 22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              const  SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                   const CircleAvatar(
                      radius: 26,
                    ),
                const    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Vikash Sharma',
                          style: GoogleFonts.roboto(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff303030)),
                        ),
                        Text(
                          '963258740',
                          style: GoogleFonts.roboto(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color:const Color(0xff303030)),
                        )
                      ],
                    ),
                  ],
                ),
             const   SizedBox(
                  height: 24,
                ),
             const   SizedBox(
                    width: 170,
                    child: Divider(
                      color: Colors.black,
                    )),
                TextButton.icon(
                    onPressed: () {},
                    icon:const Icon(
                      Icons.manage_accounts_outlined,
                      color: Color(0xffBF222B),
                    ),
                    label: Text(
                      'Profile',
                      style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color:const Color(0xff303030)),
                    )),
                TextButton.icon(
                    onPressed: () {},
                    icon:const Icon(
                      Icons.history,
                      color: Color(0xffBF222B),
                    ),
                    label: Text(
                      'Donation History',
                      style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    )),
                TextButton.icon(
                    onPressed: () {},
                    icon:const Icon(
                      Icons.notifications_active,
                      color: Color(0xffBF222B),
                    ),
                    label: Text(
                      'Notification',
                      style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    )),
                TextButton.icon(
                    onPressed: () {},
                    icon:const Icon(
                      Icons.home_work_outlined,
                      color: Color(0xffBF222B),
                    ),
                    label: Text(
                      'About NGO',
                      style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    )),
            const    SizedBox(
                  height: 12,
                ),
             const   SizedBox(
                    width: 170,
                    child: Divider(
                      color: Colors.black,
                    )),
                TextButton.icon(
                    onPressed: () {},
                    icon:const Icon(
                      Icons.group_add_outlined,
                      color: Color(0xffBF222B),
                    ),
                    label: Text(
                      'Become a Volunteer',
                      style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff303030)),
                    )),
                TextButton.icon(
                    onPressed: () {},
                    icon:const Icon(
                      Icons.policy,
                      color: Color(0xffBF222B),
                    ),
                    label: Text(
                      'Privacy Policy',
                      style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color:const Color(0xff303030)),
                    )),
                TextButton.icon(
                    onPressed: () {},
                    icon:const Icon(
                      Icons.filter_1_outlined,
                      color: Color(0xffBF222B),
                    ),
                    label: Text(
                      'Terms & Condition',
                      style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    )),
                TextButton.icon(
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => SplashScreen(),
                      //     ));
                    },
                    icon:const Icon(
                      Icons.settings_power_outlined,
                      color: Color(0xffBF222B),
                    ),
                    label: Text(
                      ' Logout',
                      style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static PreferredSizeWidget appBar(key, BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Text(
        'Hello, Vikash Sharma',
        style: GoogleFonts.roboto(fontSize: 19, fontWeight: FontWeight.w700),
      ),
      backgroundColor:const Color(0xffBF222B),
      actions: [
        IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>const NotificationScreen(),
                  ));
            },
            icon:const Icon(Icons.notifications_none))
      ],
    );
  }

  static Widget commonDropdown(
      {required SingleValueDropDownController controller,
      required FormFieldValidator validator,
      required String lableValue,
      required TextStyle styleLabel,
      required List<DropDownValueModel> dataList}) {
    return DropDownTextField(
      validator: validator,

      controller: controller,
      // stateController,
      textFieldDecoration: InputDecoration(
        labelStyle: styleLabel,
        labelText: lableValue,
        // "State",
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(41),
            borderSide:const BorderSide(color: Color(0xFF667685))),
        errorBorder: OutlineInputBorder(
            borderSide:const BorderSide(color: Color(0xFF667685)),
            borderRadius: BorderRadius.circular(41)),
        focusedBorder: OutlineInputBorder(
            borderSide:const BorderSide(color: Color(0xFF667685)),
            borderRadius: BorderRadius.circular(41)),
        enabledBorder: OutlineInputBorder(
            borderSide:const BorderSide(color: Color(0xFF667685)),
            borderRadius: BorderRadius.circular(41)),
      ),

      clearOption: false,

      // searchAutofocus: true,
      dropDownItemCount: dataList.length,
      // state.length,
      searchShowCursor: true,
      enableSearch: true,
      searchKeyboardType: TextInputType.name,
      dropDownList: dataList,
      //  state,
      onChanged: (val) {},
);
}
}