import 'package:flutter/material.dart';
import 'package:regex/user_details.dart';

import 'network_api.dart';

class ScannerScreen extends StatefulWidget {
  const ScannerScreen({super.key});

  @override
  State<ScannerScreen> createState() => _ScannerScreenState();
}

class _ScannerScreenState extends State<ScannerScreen> {
  List<UserDetails> userData = [];

  @override
  void initState() {
    NetWorkApiCalls().getUserDetails().then((value) {
      setState(() {
        userData = value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: userData.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(), borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(children: [
                Text(
                    "${userData[index].firstName ?? ''} ${userData[index].lastName ?? ''}"),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("${userData[index].email ?? ''} "),
                )
              ]),
            ),
          );
        },
      ),
    );
  }
}
