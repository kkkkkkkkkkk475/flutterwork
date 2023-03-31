import 'package:flutter/material.dart';

class u extends StatefulWidget {
  const u({super.key});

  @override
  State<u> createState() => _uState();
}

class _uState extends State<u> {
  DateTime date = DateTime(2023, 14, 2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              '   Chechout details',
              
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 270,
              width: 330,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40, right: 50),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.qr_code_scanner_sharp,
                          size: 70,
                        )),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ConstrainedBox(
                      constraints:
                          BoxConstraints.tightFor(height: 40, width: 150),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'SCAN CARD',
                          style: TextStyle(color: Colors.blue),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ))
                ],
              ),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 213, 250, 6),
                    Color.fromARGB(255, 236, 9, 168),
                  ])),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Card holder ',
                    hintStyle: TextStyle(fontSize: 13)),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Card Number ',
                    hintStyle: TextStyle(fontSize: 13)),
              ),
            ),
          ),
          Row(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text('${date.year}/${date.month}/${date.day}'),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ConstrainedBox(
                        constraints:
                            BoxConstraints.tightFor(height: 40, width: 150),
                        child: ElevatedButton(
                          onPressed: () {
                            showDatePicker(
                                context: context,
                                initialDate: date,
                                firstDate: DateTime(2001),
                                lastDate: DateTime(2025));
                          },
                          child: Text(
                            'DATE',
                            style: TextStyle(color: Colors.blue),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        )),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
