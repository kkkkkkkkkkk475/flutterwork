import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class FullImageView extends StatefulWidget {
  final String imageUrl;
  const FullImageView({super.key, required this.imageUrl});

  @override
  State<FullImageView> createState() => _FullImageViewState();
}

class _FullImageViewState extends State<FullImageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(widget.imageUrl), fit: BoxFit.fill)),
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 56, right: 25),
          child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                        'Angelo Pantazis',
                        style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        '@pawel_czerwinski',
                        style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.clear,
                    color: Colors.white,
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
