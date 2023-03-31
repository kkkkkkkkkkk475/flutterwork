import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';

class Lick_Item extends StatefulWidget {
  const Lick_Item({super.key});

  @override
  State<Lick_Item> createState() => _Lick_ItemState();
}

class _Lick_ItemState extends State<Lick_Item> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lick your product'),
        backgroundColor: Colors.pink,
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
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                width: 360,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 35, left: 10),
                      child: Column(
                        children: [
                          Text(
                            'Best qulity product',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'man sufari shut',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'price 999',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'offer limted',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 150,
                        width: 150,
                        child: Image.asset(
                          'assets/3756007.jpg',
                          fit: BoxFit.fill,
                        ),
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(blurRadius: 1),
                        ], color: Colors.white),
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(border: Border.all()),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 200,
                width: 360,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 35, left: 10),
                      child: Column(
                        children: [
                          Text(
                            'Best qulity product',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'man sufari shut',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'price 299',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'offer limted',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 150,
                        width: 150,
                        child: Image.asset(
                          'assets/100.jpeg',
                          fit: BoxFit.fill,
                        ),
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(blurRadius: 1),
                        ], color: Colors.white),
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(border: Border.all()),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 200,
                width: 360,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 35, left: 10),
                      child: Column(
                        children: [
                          Text(
                            'Best qulity product',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'man sufari shut',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'price 2499',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'offer limted',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 150,
                        width: 150,
                        child: Image.asset(
                          'assets/94.webp',
                          fit: BoxFit.fill,
                        ),
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(blurRadius: 1),
                        ], color: Colors.white),
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(border: Border.all()),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 200,
                width: 360,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 35, left: 10),
                      child: Column(
                        children: [
                          Text(
                            'Best qulity product',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'man sufari shut',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'price 99',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'offer limted',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 150,
                        width: 150,
                        child: Image.asset(
                          'assets/IMG_20230119_182317_882.jpg',
                          fit: BoxFit.fill,
                        ),
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(blurRadius: 1),
                        ], color: Colors.white),
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(border: Border.all()),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 200,
                width: 360,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 35, left: 10),
                      child: Column(
                        children: [
                          Text(
                            'Best qulity product',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'man sufari shut',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'price 164',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'offer limted',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 150,
                        width: 150,
                        child: Image.asset(
                          'assets/93.webp',
                          fit: BoxFit.fill,
                        ),
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(blurRadius: 1),
                        ], color: Colors.white),
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(border: Border.all()),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 200,
                width: 360,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 35, left: 10),
                      child: Column(
                        children: [
                          Text(
                            'Best qulity product',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'man sufari shut',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'price 499',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'offer limted',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 150,
                        width: 150,
                        child: Image.asset(
                          'assets/91.webp',
                          fit: BoxFit.fill,
                        ),
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(blurRadius: 1),
                        ], color: Colors.white),
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(border: Border.all()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
