import 'package:flutter/material.dart';

class Coustom extends StatefulWidget {
  const Coustom({super.key});

  @override
  State<Coustom> createState() => _CoustomState();
}

bool show = false;
bool show2 = false;

class _CoustomState extends State<Coustom> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    show = !show;
                  });
                },
                child: Text("data"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: show2 ? Colors.red : Colors.green),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    show2 = !show2;
                  });
                },
                child: Text("data"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: show ? Colors.amber : Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
