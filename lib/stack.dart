import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:route/contact_list.dart';
import 'package:route/custom_button.dart';
import 'package:route/home.dart';

class Stact extends StatefulWidget {
  const Stact({Key? key}) : super(key: key);

  @override
  State<Stact> createState() => _StactState();
}

class _StactState extends State<Stact> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Image.asset(
            "images/aa.jpg",
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Center(
            child: Positioned(
                child: Column(
              children: [
                Text(
                  'AUDI',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                ActionChip(
                    label: Text(
                      'Start Engine',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => CustomButton())));
                    })
              ],
            )),
          )
        ],
      )),
    ));
  }
}
