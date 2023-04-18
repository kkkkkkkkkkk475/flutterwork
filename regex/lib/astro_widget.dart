import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:regex/astro_model.dart';

class AstroWidget extends StatefulWidget {
  const AstroWidget({super.key});

  @override
  State<AstroWidget> createState() => _AstroWidgetState();
}

class _AstroWidgetState extends State<AstroWidget> {
  List<AstroModel> astroModel = [];
  List<Map<String, dynamic>> astroUserDetails = [
    {
      'bg_image': 'assets/astro_images/astro_background.png',
      'astro_profile_pic': 'assets/astro_images/astro_user_image.png',
      'show_om_icon': true,
      'astro_type': {'type': 'most_choice', 'total_count': null},
      'astro_name': 'Astro Ruchi',
      'exp_year': 10,
      'lang': ['Hindi', 'English'],
      'orignal_price': 40,
      'astro_price': {'type': 'free', 'new_charge': null},
      'rating': 3.2
    },
    {
      'bg_image': 'assets/astro_images/astro_background.png',
      'astro_profile_pic': 'assets/astro_images/astro_user_image.png',
      'show_om_icon': false,
      'astro_type': {'type': 'New', 'total_count': null},
      'astro_name': 'Astro Rekha Sharma',
      'exp_year': 10,
      'lang': ['Hindi'],
      'orignal_price': 60,
      'astro_price': {'type': 'free', 'new_charge': null},
      'rating': 2.2
    },
    {
      'bg_image': 'assets/astro_images/astro_background.png',
      'astro_profile_pic': 'assets/astro_images/astro_user_image.png',
      'show_om_icon': true,
      'astro_type': {'type': 'total', 'total_count': 400},
      'astro_name': 'Astro Ruchi',
      'exp_year': 10,
      'lang': ['English'],
      'orignal_price': 60,
      'astro_price': {
        'type': 'new_user',
        'new_charge': 40,
      },
      'rating': 4.0
    },
    {
      'bg_image': 'assets/astro_images/astro_background.png',
      'astro_profile_pic': 'assets/astro_images/astro_user_image.png',
      'show_om_icon': true,
      'astro_type': {'type': 'most_choice', 'total_count': null},
      'astro_name': 'Astro Ruchi',
      'exp_year': 10,
      'lang': ['Hindi', 'English'],
      'orignal_price': 60,
      'astro_price': {'type': 'free', 'new_charge': null},
      'rating': 4.0
    },
    {
      'bg_image': 'assets/astro_images/astro_background.png',
      'astro_profile_pic': 'assets/astro_images/astro_user_image.png',
      'show_om_icon': true,
      'astro_type': {'type': 'most_choice', 'total_count': null},
      'astro_name': 'Astro Ruchi',
      'exp_year': 10,
      'lang': ['Hindi', 'English'],
      'orignal_price': 60,
      'astro_price': {'type': 'free', 'new_charge': null},
      'rating': 4.0
    },
    {
      'bg_image': 'assets/astro_images/astro_background.png',
      'astro_profile_pic': 'assets/astro_images/astro_user_image.png',
      'show_om_icon': true,
      'astro_type': {'type': 'most_choice', 'total_count': null},
      'astro_name': 'Astro Ruchi',
      'exp_year': 10,
      'lang': ['Hindi', 'English'],
      'orignal_price': 60,
      'astro_price': {'type': 'free', 'new_charge': null},
      'rating': 4.0
    },
    {
      'bg_image': 'assets/astro_images/astro_background.png',
      'astro_profile_pic': 'assets/astro_images/astro_user_image.png',
      'show_om_icon': true,
      'astro_type': {'type': 'most_choice', 'total_count': null},
      'astro_name': 'Astro Ruchi',
      'exp_year': 10,
      'lang': ['Hindi', 'English'],
      'orignal_price': 60,
      'astro_price': {'type': 'free', 'new_charge': null},
      'rating': 4.0
    },
    {
      'bg_image': 'assets/astro_images/astro_background.png',
      'astro_profile_pic': 'assets/astro_images/astro_user_image.png',
      'show_om_icon': true,
      'astro_type': {'type': 'most_choice', 'total_count': null},
      'astro_name': 'Astro Ruchi',
      'exp_year': 10,
      'lang': ['Hindi', 'English'],
      'orignal_price': 60,
      'astro_price': {'type': 'free', 'new_charge': null},
      'rating': 4.0
    },
    {
      'bg_image': 'assets/astro_images/astro_background.png',
      'astro_profile_pic': 'assets/astro_images/astro_user_image.png',
      'show_om_icon': true,
      'astro_type': {'type': 'most_choice', 'total_count': null},
      'astro_name': 'Astro Ruchi',
      'exp_year': 10,
      'lang': ['Hindi', 'English'],
      'orignal_price': 60,
      'astro_price': {'type': 'free', 'new_charge': null},
      'rating': 4.0
    },
    {
      'bg_image': 'assets/astro_images/astro_background.png',
      'astro_profile_pic': 'assets/astro_images/astro_user_image.png',
      'show_om_icon': true,
      'astro_type': {'type': 'most_choice', 'total_count': null},
      'astro_name': 'Astro Ruchi',
      'exp_year': 10,
      'lang': ['Hindi', 'English'],
      'orignal_price': 60,
      'astro_price': {'type': 'free', 'new_charge': null},
      'rating': 4.0
    },
    {
      'bg_image': 'assets/astro_images/astro_background.png',
      'astro_profile_pic': 'assets/astro_images/astro_user_image.png',
      'show_om_icon': true,
      'astro_type': {'type': 'most_choice', 'total_count': null},
      'astro_name': 'Astro Ruchi',
      'exp_year': 10,
      'lang': ['Hindi', 'English'],
      'orignal_price': 60,
      'astro_price': {'type': 'free', 'new_charge': null},
      'rating': 4.0
    },
    {
      'bg_image': 'assets/astro_images/astro_background.png',
      'astro_profile_pic': 'assets/astro_images/astro_user_image.png',
      'show_om_icon': true,
      'astro_type': {'type': 'most_choice', 'total_count': null},
      'astro_name': 'Astro Ruchi',
      'exp_year': 10,
      'lang': ['Hindi', 'English'],
      'orignal_price': 60,
      'astro_price': {'type': 'free', 'new_charge': null},
      'rating': 4.0
    },
    {
      'bg_image': 'assets/astro_images/astro_background.png',
      'astro_profile_pic': 'assets/astro_images/astro_user_image.png',
      'show_om_icon': true,
      'astro_type': {'type': 'most_choice', 'total_count': null},
      'astro_name': 'Astro Ruchi',
      'exp_year': 10,
      'lang': ['Hindi', 'English'],
      'orignal_price': 60,
      'astro_price': {'type': 'free', 'new_charge': null},
      'rating': 4.0
    }
  ];

  @override
  void initState() {
    for (var element in astroUserDetails) {
      astroModel.add(AstroModel.fromJson(element));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 30),
        child: GridView.builder(
          itemCount: astroModel.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 15, mainAxisSpacing: 15),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 226,
              width: 165,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all()),
              child: Column(
                children: [
                  Container(
                    height: 95,
                    width: 165,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              astroModel[index].bgImage!,
                            ))),
                    child: Stack(children: [
                      Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          astroModel[index].astroProfilePic!,
                          height: 48,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(children: [
                            Container(
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xff01DF1F)),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Online',
                              style: TextStyle(color: Colors.white),
                            ),
                            Spacer(),
                            if (astroModel[index].showOmIcon!)
                              Image.asset(
                                'assets/astro_images/om.png',
                                height: 11.5,
                              ),
                            SizedBox(width: 8),
                            Image.asset(
                              'assets/astro_images/astrology.png',
                              height: 11.5,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Image.asset(
                              'assets/astro_images/vedas.png',
                              height: 11.5,
                            )
                          ]),
                        ),
                      )
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 12,
                          color: Colors.blue,
                        ),
                        SizedBox(width: 5),
                        Text(
                          astroModel[index].rating.toString(),
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        chip(astroModel[index].astroType!),
                      ],
                    ),
                  ),

                  // "[hindi,english]"
                  // ['[','hindi,english]'],

                  // 'hindi,english]'
                  // ['hindi,english',']']
                  Text(
                    'Language: ${astroModel[index].lang.toString().split('[').last.split(']').first}',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  RichText(
                      text: TextSpan(
                          text: 'Language:',
                          style: TextStyle(color: Colors.black),
                          children: [
                        for (int i = 0; i < astroModel[index].lang!.length; i++)
                          TextSpan(text: '${astroModel[index].lang![i]},')
                      ]))
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget chip(AstroType astroType) {
    switch (astroType.type) {
      case 'most_choice':
        return Container(
          height: 18,
          width: 80,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(12)),
          child: Center(
              child: Text(
            'Most Choice',
            style: TextStyle(color: Colors.white, fontSize: 10),
          )),
        );

      case 'total':
        return Text(
          '(Total ${astroType.totalCount})',
          style: TextStyle(color: Color(0xff848484), fontSize: 13),
        );
      case 'new':
        return Text(
          'New',
          style: TextStyle(color: Colors.black, fontSize: 13),
        );
      default:
        return Text(
          'New',
          style: TextStyle(color: Colors.black, fontSize: 13),
        );
    }
  }
}
