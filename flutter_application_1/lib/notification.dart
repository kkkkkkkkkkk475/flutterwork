import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';

class Notificatio extends StatefulWidget {
  const Notificatio({super.key});

  @override
  State<Notificatio> createState() => _NotificatioState();
}

class _NotificatioState extends State<Notificatio> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('Notificatio'),
        backgroundColor: Color.fromARGB(255, 250, 10, 10),
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ));
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DefaultTabController(
                length: 3,
                child: Column(
                  children: [
                    Material(
                      child: Container(
                        height: 55,
                        // ignore: sort_child_properties_last
                        child: TabBar(
                            padding: EdgeInsets.only(
                                top: 10, bottom: 10, left: 10, right: 10),
                            unselectedLabelColor: Colors.black,
                            labelColor: Colors.blue,
                            indicatorSize: TabBarIndicatorSize.label,
                            indicator: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.pink[200]),
                            tabs: [
                              Tab(
                                child: Container(
                                  height: 35,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(30),
                                      border: Border.all(
                                          color: Colors.red, width: 1)),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text('Order'),
                                  ),
                                ),
                              ),
                              Tab(
                                child: Container(
                                  height: 35,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(30),
                                      border: Border.all(
                                          color: Colors.red, width: 1)),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text('Activity'),
                                  ),
                                ),
                              ),
                              Tab(
                                child: Container(
                                  height: 55,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(30),
                                      border: Border.all(
                                          color: Colors.red, width: 1)),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text('Promotions'),
                                  ),
                                ),
                              )
                            ]),
                        color: Colors.white,
                      ),
                    )
                  ],
                )),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 300,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 300, top: 20),
                    child: Text(
                      'Orders',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Image.asset(
                    'assets/00000.webp',
                    height: 190,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'We will notify you when somthing arrivs',
                    style: TextStyle(fontWeight: FontWeight.w300),
                  )
                ],
              ),
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 300,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 300, top: 20),
                    child: Text(
                      'Activity',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Image.asset(
                    'assets/00000.webp',
                    height: 190,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'We will notify you when somthing arrivs',
                    style: TextStyle(fontWeight: FontWeight.w300),
                  )
                ],
              ),
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 50,
              width: double.infinity,
              child: Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '   Promotions',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      'VIEW ALL   ',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                '     New & hit class Watering Hoses &Accessories',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                '       1.designs of Classy Watering Hoses &Accessories\n          string from ₹370! Limited Stocks!Book NOW!',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(
              height: 220,
            ),
          ],
        ),
      ),
    );
  }
}
