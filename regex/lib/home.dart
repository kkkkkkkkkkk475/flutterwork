import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:regex/full_image_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> images = [
    'assets/1.png',
    'assets/2.png',
    'assets/3.png',
    'assets/4.png',
    'assets/5.png',
    'assets/6.png',
    'assets/7.png',
    'assets/8.png',
    'assets/9.png',
    'assets/10.png',
    'assets/11.png',
    'assets/12.png',
    'assets/13.png',
    'assets/14.png',
    'assets/15.png',
    'assets/16.png',
    'assets/17.png',
    'assets/18.png',
    'assets/19.png',
    'assets/20.png',
    'assets/21.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        SizedBox(
          height: 60,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Discover',
            style: GoogleFonts.comfortaa(
                fontSize: 36, fontWeight: FontWeight.w400),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'What’s new today',
            style:
                GoogleFonts.roboto(fontSize: 13, fontWeight: FontWeight.w900),
          ),
        ),
        SizedBox(
          height: 387,
          width: MediaQuery.of(context).size.width,
          child: PageView.builder(
            itemCount: images.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      fullscreenDialog: true,
                      builder: (context) {
                        return FullImageView(
                          imageUrl: images[index],
                        );
                      },
                    ),
                  );
                },
                child: SizedBox(
                  width: 343,
                  child: Column(children: [
                    Image.asset(
                      images[index],
                      height: 343,
                      width: 343,
                      fit: BoxFit.fill,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, top: 16),
                      child: Row(mainAxisSize: MainAxisSize.max, children: [
                        Container(
                          height: 28,
                          width: 28,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                      'https://th.bing.com/th/id/OIP.suZlmdLALz9i3ibbl5XXeQHaLH?pid=ImgDet&rs=1'))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                images[index],
                                style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                '@pawel_czerwinski',
                                style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        )
                      ]),
                    ),
                  ]),
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MasonryGridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisSpacing: 8,
            shrinkWrap: true,
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Image.asset(images[index]);
            },
          ),
        )
      ]),
    );
  }
}
