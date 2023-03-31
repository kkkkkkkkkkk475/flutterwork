import 'package:flutter/material.dart';

import 'home_page.dart';

class Shoping extends StatefulWidget {
  const Shoping({super.key});

  @override
  State<Shoping> createState() => _ShopingState();
}

class _ShopingState extends State<Shoping> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
            title: Text(
              'Cart',
              style: TextStyle(color: Colors.black),
            ),
            elevation: 1,
            backgroundColor: Colors.white,
            leading: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ));
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ))),
        body: Column(children: [
          Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(border: Border.all(width: 0.1)),
          ),
          Container(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Text('₹'),
                    radius: 15,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'save ₹1 whit only Wrong/defect item return',
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            width: double.infinity,
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 147, 253, 218)),
          ),
          Container(
            height: 200,
            color: Colors.white,
            width: double.infinity,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 100),
                  child: Image.asset(
                    'assets/12345.webp',
                    height: 100,
                    width: 70,
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      '   Beautful small jhumkis set  for women & G...',
                      style: TextStyle(fontWeight: FontWeight.bold),
                      overflow: TextOverflow.clip,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          '₹109                                                            ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        InkWell(onTap: () {}, child: Icon(Icons.navigate_next))
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'ALL Return                                                        ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Size :Free Size QTY:1                                       ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'X  Remove                                                           ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 60,
            width: double.infinity,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text('Sold by Mishri Traders'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Text('Delivery Fee: Rs. 66'),
                ),
              ],
            ),
            decoration: BoxDecoration(color: Colors.white),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 60,
            width: double.infinity,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text('Wishlist'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 250),
                  child: InkWell(
                      onTap: () {},
                      child: Icon(Icons.arrow_forward_ios_rounded)),
                )
              ],
            ),
            decoration: BoxDecoration(color: Colors.white),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 140,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text('Price Details (1 Item)'),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text("Total Product Price",
                          style: TextStyle(color: Colors.grey)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 180),
                      child:
                          Text("+ ₹105", style: TextStyle(color: Colors.grey)),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Additional Fees",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 210),
                      child:
                          Text("+ ₹66", style: TextStyle(color: Colors.grey)),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Divider(),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Order Total",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 240),
                      child: Text(
                        "₹171",
                      ),
                    )
                  ],
                ),
              ],
            ),
            decoration: BoxDecoration(color: Colors.white),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 30,
            width: double.infinity,
            child: Center(
                child: Text('Clicking on Continue will not deduct any money')),
            decoration: BoxDecoration(color: Colors.white),
          ),
          SizedBox(
            height: 3,
          ),
          Container(
            height: 90,
            width: double.infinity,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text('₹171'),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'View Price Details',
                        style: TextStyle(color: Colors.pink),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 130),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Continue"),
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.pink),
                  ),
                )
              ],
            ),
            decoration: BoxDecoration(color: Colors.white),
          ),
        ]));
  }
}
