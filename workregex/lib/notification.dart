import 'package:flutter/material.dart';
class Noti extends StatefulWidget {
  const Noti({super.key});

  @override
  State<Noti> createState() => _NotiState();
}
class _NotiState extends State<Noti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEDEDED),
      appBar: AppBar(
        title: Text(
          'Notification',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 19),
        ),
        leading: BackButton(color: Colors.white),
        backgroundColor: Color(0xffBF222B),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: 82,
              width: 340,
              // ignore: sort_child_properties_last
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15), 
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/Ellipse 18.png'),
                    ),
                  ),
                  Column(
                    children: [
                      // ignore: prefer_const_constructors
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            '                                                                NEW',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 212, 24, 11)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'we want to thank all of our donors.    ',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Row(
                        children: [
                          Icon(Icons.south_west),
                          Text(
                            ' Send By NGO         ',
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          Text(
                            '2 Hours Ago',
                            style: TextStyle(fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 82,
              width: 340,
              // ignore: sort_child_properties_last
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/Ellipse 18.png'),
                    ),
                  ),
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            '                                                                NEW',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 212, 24, 11)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'we want to thank all of our donors.    ',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Row(
                        children: [
                          Icon(Icons.south_west),
                          Text(
                            ' Send By NGO         ',
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          Text(
                            '2 Hours Ago',
                            style: TextStyle(fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 82,
              width: 340,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/Ellipse 18.png'),
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        '    we want to thank all of our donors.    ',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Row(
                        children: [
                          Icon(Icons.south_west),
                          Text(
                            ' Send By NGO         ',
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          Text(
                            '2 Hours Ago',
                            style: TextStyle(fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 82,
              width: 340,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/Ellipse 18.png'),
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox( 
                        height: 20,
                      ),
                      Text(
                        '    we want to thank all of our donors.    ',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Row(
                        children: [
                          Icon(Icons.south_west),
                          Text(
                            ' Send By NGO         ',
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          Text(
                            '2 Hours Ago',
                            style: TextStyle(fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 82,
              width: 340,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/Ellipse 18.png'),
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        '    we want to thank all of our donors.    ',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Row(
                        children: [
                          Icon(Icons.south_west),
                          Text(
                            ' Send By NGO         ',
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          Text(
                            '2 Hours Ago',
                            style: TextStyle(fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
            ),
          ],
        ),
      ),
    );
  }
}
