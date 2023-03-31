import 'package:flutter/material.dart';
import 'package:list_picker/list_picker.dart';
import 'package:location_picker_flutter_map/location_picker_flutter_map.dart';
import 'package:login/search.dart';

class H extends StatefulWidget {
  const H({super.key});

  @override
  State<H> createState() => _HState();
}

class _HState extends State<H> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.amber[50],
      appBar: AppBar(
        backgroundColor: Colors.orange[300],
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SEARCH(),
                  ));
            },
            icon: Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.account_box)),
          )
        ],
        leading: BackButton(color: Colors.black),
      ),
      bottomNavigationBar: Container(
        height: 80,
        width: double.infinity,
        // ignore: sort_child_properties_last
        child: Padding(
          padding: const EdgeInsets.only(left: 35),
          child: Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                    size: 40,
                  )),
              SizedBox(
                width: 20,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 40,
                  )),
              SizedBox(
                width: 20,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.account_balance,
                    color: Colors.white,
                    size: 40,
                  )),
              SizedBox(
                width: 20,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.work,
                    color: Colors.white,
                    size: 40,
                  )),
              SizedBox(
                width: 20,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_box_rounded,
                    color: Colors.white,
                    size: 40,
                  )),
            ],
          ),
        ),
        decoration: BoxDecoration(color: Colors.orange),
      ),
      body: Column(
        children: [
          ListPickerDialog(label: (''), items: ['ram', 'laxman', 'jaipur']),
        ],
      ),
    );
  }
}
