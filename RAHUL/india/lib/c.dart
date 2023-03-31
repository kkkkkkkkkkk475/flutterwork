import 'package:flutter/material.dart';

class Creat extends StatefulWidget {
  const Creat({super.key});
  @override
  State<Creat> createState() => _CreatState();
}

class _CreatState extends State<Creat> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 8, 70, 145),
      body: Column(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                '\n\nCreate\nAccount.                   ',
                style: TextStyle(
                    color: Color.fromARGB(255, 57, 54, 244),
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(70))),
          ),
          SizedBox(
            height: 100,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'EMAIL',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50),
            child: TextField(
              obscureText: isVisible,
              decoration: InputDecoration(
                suffixIcon: eyeButton(),
                hintText: 'PASSWORD',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(color: Colors.white),
          )
        ],
      ),
    );
  }

  Widget eyeButton() {
    return InkWell(
        onTap: () {
          setState(() {
            isVisible = !isVisible;
          });
        },
        child: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: isVisible
              ? const Icon(Icons.visibility)
              : const Icon(Icons.visibility_off),
        ));
  }
}
