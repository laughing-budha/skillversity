import 'package:abibas/constants.dart';
import 'package:abibas/widgets/category_card.dart';
import 'package:abibas/widgets/progres_card.dart';
import 'package:abibas/widgets/text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          // backgroundColor: Color(0xffeffdda),
          body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text("Hey Ashwin!", style: kHeadingextStyle),
                  Container(
                    child: Image.asset("assets/images/user.png"),
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              //width: 200,
              height: 270,
              child: SvgPicture.asset("assets/icons/avatar.svg"),
            ),
            ProgresCard(),
            Row(
              children: [
                SizedBox(
                  width: 190,
                  height: 180,
                  child: SvgPicture.asset("assets/icons/goal.svg"),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 18),
                  child: Column(
                    children: [
                      const Text(
                        "Let's begin this journey by setting\nyour daily goal\n",
                        style: TextStyle(fontSize: 13),
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 45,
                          ),
                          buttonText(),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            //const SearchBar(),
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 15, 0, 3),
              child: Text(
                "Explore topics",
                style: exploreTextStyle,
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CategoryCard(
                  title: "Financial Literacy",
                  svgSrc: "assets/icons/finance.svg",
                ),
                CategoryCard(
                  title: "Communication",
                  svgSrc: "assets/icons/comm.svg",
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CategoryCard(
                  title: "Mental Health",
                  svgSrc: "assets/icons/ment.svg",
                ),
                CategoryCard(
                  title: "Sex and relationships",
                  svgSrc: "assets/icons/se.svg",
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
