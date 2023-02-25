import 'package:flutter/material.dart';

class ChangeColor extends StatefulWidget {
  const ChangeColor({Key? key}) : super(key: key);

  @override
  State<ChangeColor> createState() => _ChangeColorState();
}

class _ChangeColorState extends State<ChangeColor> {
  var g =0xff2EA043;

  int n=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Color(g)),
            onPressed: () {
              setState(() {
                g=g*100;
                n+=1;
                if (n==8)
                  {g=0xff8774E1;}
                if (n==17)
                  {g=0xff2EA043;}
              });
            },
            child: const Text('hi there',
                style: TextStyle(
                    color:Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
          )),
    );
  }
}
