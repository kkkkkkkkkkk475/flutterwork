import 'package:flutter/material.dart';


class sp extends StatefulWidget {
  const sp({super.key});

  @override
  State<sp> createState() => _spState();
}

class _spState extends State<sp> {
  @override
  Widget build(BuildContext context) {
    List arrNames = ['GKMT IS VARY NICE COMPANY OF CODEING', 'r', 't'];
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 300,
            child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                height: 200,
                width: 330,
                child: Center(
                  child: Text(
                    arrNames[index],
                    style: TextStyle(fontSize: 20, color: Color(0xff128C7E)),
                  ),
                ),
                margin: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(blurRadius: 2)],
                    image: DecorationImage(
                        image: AssetImage('assets/pexels-pok-rie-2049422.jpg'),
                        fit: BoxFit.fill)),
              ),
            ),
          ),
          ConstrainedBox(
              constraints: BoxConstraints.tightFor(height: 50, width: 200),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'NEXT',
                  style: TextStyle(color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
              )),
          TextField(
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
          TextField(
              decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            hintText: "Email",
          )),
        ],
      ),
    );
  }
}
