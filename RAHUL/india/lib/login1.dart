import 'package:flutter/material.dart';

class l extends StatefulWidget {
  const l({super.key});

  @override
  State<l> createState() => _lState();
}

class _lState extends State<l> {
  bool isVisible = true;
  bool value = false;

  bool get val => false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 253, 242, 181),
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Column(
                children: [
                  Text(
                    'REGEX  SOFTWEAR    ',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 30,
                        color: Color.fromARGB(255, 47, 165, 110)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '  TRAINING & PLACEMENT PROGRNM',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color.fromARGB(255, 47, 165, 110)),
                  )
                ],
              ),
            ),
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(100)),
                border: Border.all(color: Colors.teal)),
          ),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              '   Create Account',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text('      other account?'),
              InkWell(
                onTap: () {},
                child: Text(
                  'Login',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'EMAIL',
                suffixIcon: Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40),
            child: TextField(
              obscureText: isVisible,
              decoration: InputDecoration(
                hintText: 'PASSWORD',
                suffixIcon: eyeButton(),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              children: [
                Checkbox(
                    splashRadius: 10,
                    fillColor: MaterialStateProperty.all(Colors.amber),
                    
                    value: value,
                    onChanged: (value) => setState(
                          () => this.value = value!,
                        )),
                Text('Remember me')
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 60,
              width: 230,
              child: Center(child: Text('NEXT')),
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.yellow,
                    Color.fromARGB(255, 54, 216, 244)
                  ]),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.teal),
                  boxShadow: [BoxShadow(blurRadius: 0, color: Colors.pink)]),
            ),
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
                ? const Icon(
                    Icons.visibility_off,
                    color: Colors.black,
                  )
                : const Icon(
                    Icons.visibility,
                    color: Colors.black,
                  )));
  }
}
