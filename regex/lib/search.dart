import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<Map<String, dynamic>> images = [
    {'image_url': 'assets/1.png', 'image_name': 'Dog'},
    {'image_url': 'assets/2.png', 'image_name': 'Cat'},
    {'image_url': 'assets/3.png', 'image_name': 'Camel'},
    {'image_url': 'assets/4.png', 'image_name': 'Monkey'},
    {'image_url': 'assets/5.png', 'image_name': 'Lion'},
    {'image_url': 'assets/6.png', 'image_name': 'Tiger'},
    {'image_url': 'assets/7.png', 'image_name': 'Elephant'},
    {'image_url': 'assets/8.png', 'image_name': 'Cow'},
    {'image_url': 'assets/9.png', 'image_name': 'Rat'},
    {'image_url': 'assets/10.png', 'image_name': 'Mice'},
    {'image_url': 'assets/11.png', 'image_name': 'Dog'},
    {'image_url': 'assets/12.png', 'image_name': 'Cat'},
    {'image_url': 'assets/13.png', 'image_name': 'Camel'},
    {'image_url': 'assets/14.png', 'image_name': 'Monkey'},
    {'image_url': 'assets/15.png', 'image_name': 'Lion'},
    {'image_url': 'assets/16.png', 'image_name': 'Tiger'},
    {'image_url': 'assets/17.png', 'image_name': 'Elephant'},
    {'image_url': 'assets/18.png', 'image_name': 'Cow'},
    {'image_url': 'assets/19.png', 'image_name': 'Rat'},
    {'image_url': 'assets/20.png', 'image_name': 'Mice'},
    {'image_url': 'assets/21.png', 'image_name': 'Mice'},
  ];
  late List<Map<String, dynamic>> temp;

  @override
  void initState() {
    temp = images;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Search',
            style: GoogleFonts.comfortaa(
                fontSize: 36, fontWeight: FontWeight.w400),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            onChanged: (value) {
              temp = [];

              for (int i = 0; i < images.length; i++) {
                if (images[i]['image_name']
                    .toString()
                    .toLowerCase()
                    .contains(value.toLowerCase())) {
                  temp.add(images[i]);
                }
              }

              setState(() {});
            },
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              hintText: 'Search all photos',
              border: OutlineInputBorder(
                borderSide: BorderSide(width: 3, color: Colors.black),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.black),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MasonryGridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisSpacing: 8,
            shrinkWrap: true,
            itemCount: temp.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Image.asset(temp[index]['image_url']),
                  Text(temp[index]['image_name'])
                ],
              );
            },
          ),
        )
      ]),
    );
  }
}
