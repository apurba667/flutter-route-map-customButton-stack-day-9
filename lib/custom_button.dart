import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:route/welcome.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Welcome(),
              ));
            },
            child: Container(
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0.0, 30.0),
                      blurRadius: 30,
                      color: Colors.black)
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 110,
                    decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(95),
                            bottomLeft: Radius.circular(95),
                            bottomRight: Radius.circular(200))),
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                    child: Text("Submit"),
                  ),
                  Icon(Icons.home)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
