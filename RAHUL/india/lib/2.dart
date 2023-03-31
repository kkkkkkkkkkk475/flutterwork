import 'package:flutter/material.dart';

class mai extends StatefulWidget {
  const mai({super.key});

  @override
  State<mai> createState() => _maiState();
}

class _maiState extends State<mai> {
  List<Widget> tabBariews = [Text('Rahul')];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.camera_enhance),
              ),
              SizedBox(
                width: 10,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_vert),
                ),
              ),
            ],
            bottom: TabBar(
              tabs: [
                Icon(
                  Icons.groups,
                  color: Colors.white,
                  size: 27,
                ),
                Text(
                  'Chats',
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  'Status',
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  'Calls',
                  style: TextStyle(fontSize: 15),
                )
              ],
              onTap: (index) {
                print(index);
              },
            ),
            title: Text('Whatsapp'),
            backgroundColor: Color.fromARGB(255, 76, 150, 7),
          ),
          body: Center()),
    );
  }
}
