import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  List contactList = [
    {"name": "Apurba", "phone": "0132413244"},
    {"name": "Apurba", "phone": "0132413244"},
    {"name": "Apurba", "phone": "0132413244"},
    {"name": "Apurba", "phone": "0132413244"},
    {"name": "Apurba", "phone": "0132413244"},
    {"name": "Apurba", "phone": "0132413244"},
    {"name": "Apurba", "phone": "0132413244"},
    {"name": "Apurba", "phone": "0132413244"},
    {"name": "Apurba", "phone": "0132413244"},
    {"name": "Apurba", "phone": "0132413244"},
    {"name": "Apurba", "phone": "0132413244"},
    {"name": "Apurba", "phone": "0132413244"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: contactList.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    child: Text(contactList[index]["name"][0]),
                  ),
                  title: Text(contactList[index]["name"]),
                  subtitle: Text(contactList[index]["phone"]),
                ),
              ],
            );
          }),
    );
  }
}
