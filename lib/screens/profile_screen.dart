import 'package:abibas/widgets/progres_card.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your profile"),
        backgroundColor: Colors.green[400],
      ),
      body: Container(
        color: Colors.white,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              "Hello, Aswin",
              style: TextStyle(
                  color: Colors.green[400],
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              child: Image.asset("assets/images/user.png"),
              height: 200,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ProgresCard(conti: false),
          SizedBox(
            height: 10,
          ),
          ProgresCard(
            conti: false,
            cName: "Communication",
            percS: "45%",
            level: "Advanced",
            perc: 45,
          )
        ]),
      ),
    );
  }
}
