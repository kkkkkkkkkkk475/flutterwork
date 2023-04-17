import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:regex/auth_controller.dart';

class DrawerAppBar extends StatefulWidget {
  const DrawerAppBar({super.key});

  @override
  State<DrawerAppBar> createState() => _DrawerAppBarState();
}

class _DrawerAppBarState extends State<DrawerAppBar> {
  String userImage =
      'https://images.unsplash.com/photo-1597223557154-721c1cecc4b0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80';

  @override
  Widget build(BuildContext context) {
    
    return Drawer(
        child: Column(
      children: [
        const SizedBox(
          height: 60,
        ),
        Center(
          child: CircleAvatar(
            radius: 128 / 2,
            backgroundImage: NetworkImage(userImage),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: Text(
            'Jane',
            style: GoogleFonts.comfortaa(
                fontSize: 36, fontWeight: FontWeight.w400),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Center(
          child: Text(
            'San francisco, ca',
            style:
                GoogleFonts.roboto(fontSize: 13, fontWeight: FontWeight.w900),
          ),
        ),
      ],
    ));
  }
}
