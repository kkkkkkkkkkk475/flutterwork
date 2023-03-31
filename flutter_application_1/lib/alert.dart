import 'package:flutter/material.dart';

class Rahul extends StatefulWidget {
  const Rahul({super.key});

  @override
  State<Rahul> createState() => _RahulState();
}

class _RahulState extends State<Rahul> {
  List data = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('AlertDialog Sample')),
        body: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return IconButton(
                  onPressed: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: Text('Alert???'),
                          content: Text(
                            'DO YOU WANT TO DELET ',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'NO'),
                              child: Text('NO'),
                            ),
                            TextButton(
                              onPressed: () {
                                data.removeAt(index);
                                setState(() {});
                                Navigator.pop(context, 'YES');
                              },
                              child: Text(
                                'YES',
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ],
                        ),
                      ),
                  icon: Row(
                    children: [
                      Text(data[index].toString()),
                      Icon(Icons.delete),
                    ],
                  ));
            }),
      ),
    );
  }
}
