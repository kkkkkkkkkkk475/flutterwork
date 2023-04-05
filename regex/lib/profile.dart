import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String userImage =
      'https://images.unsplash.com/photo-1597223557154-721c1cecc4b0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80';

  List<String> images = [
    'assets/images/image-1.avif',
    'assets/images/image-2.jpg',
    'assets/images/image-3.jpg',
    'assets/images/image-1.avif',
    'assets/images/image-2.jpg',
    'assets/images/image-3.jpg',
    'assets/images/image-1.avif',
    'assets/images/image-2.jpg',
    'assets/images/image-3.jpg',
    'assets/images/image-1.avif',
    'assets/images/image-2.jpg',
    'assets/images/image-3.jpg',
    'assets/images/image-1.avif',
    'assets/images/image-2.jpg',
    'assets/images/image-3.jpg',
    'assets/images/image-1.avif',
    'assets/images/image-2.jpg',
    'assets/images/image-3.jpg',
    'assets/images/image-1.avif',
    'assets/images/image-2.jpg',
    'assets/images/image-3.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: ListView(
        children: [
          const SizedBox(
            height: 78,
          ),
          Center(
            child: CircleAvatar(
              radius: 128 / 2,
              backgroundImage: NetworkImage(userImage),
            ),
          ),
          const SizedBox(
            height: 32,
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
          const SizedBox(
            height: 32,
          ),
          Container(
            height: 52,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6), color: Colors.black),
            child: Center(
                child: Text(
              'follow jane'.toUpperCase(),
              style: GoogleFonts.roboto(
                  fontSize: 13,
                  fontWeight: FontWeight.w900,
                  color: Colors.white),
            )),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            height: 52,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(width: 2),
                borderRadius: BorderRadius.circular(6),
                color: Colors.white),
            child: Center(
                child: Text(
              'message'.toUpperCase(),
              style: GoogleFonts.roboto(
                fontSize: 13,
                fontWeight: FontWeight.w900,
              ),
            )),
          ),
          const SizedBox(
            height: 16,
          ),
          MasonryGridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 4,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisSpacing: 4,
            shrinkWrap: true,
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Image.asset(images[index]);
            },
          )
        ],
      ),
    );
  }
}
