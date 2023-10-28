import 'package:skillversity/constants.dart';
import 'package:skillversity/screens/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

// ignore: must_be_immutable
class ProgresCard extends StatelessWidget {
  String cName;
  String percS;
  double perc;
  bool conti;
  String level;

  ProgresCard(
      {Key? key,
      this.cName = "Patents and Trademarks",
      this.percS = "62%",
      this.perc = 62.0,
      this.level = "Beginer",
      this.conti = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      height: 115,
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: kShadow,
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return const DetailsScreen(title: "Patents and Trademarks");
              }),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // SizedBox(height: ),
                (conti)
                    ? (const Text(
                        "Continue reading",
                        style: TextStyle(
                          fontSize: 17,
                          //color: Color(0xFFA0A5BD),
                        ),
                      ))
                    : const SizedBox.shrink(),
                Row(
                  children: [
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: CircularPercentIndicator(
                        radius: 20.0,
                        lineWidth: 6.0,
                        percent: perc / 100,
                        animation: true,
                        center: Text(
                          percS,
                          style:
                              TextStyle(fontSize: 11, color: Colors.grey[700]),
                        ),
                        progressColor: const Color(0xff00a075),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        // leading:
                        title: Text(
                          cName,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text("Level: $level"),
                        trailing: (conti)
                            ? Icon(
                                Icons.arrow_forward_sharp,
                                color: Colors.lightGreenAccent[700],
                              )
                            : const SizedBox.shrink(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
