import 'package:flutter/material.dart';
import '../constants.dart';
import '../widgets/feed_container.dart';
import '../widgets/feed_list.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xff2a2a2a),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 50, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: <Widget>[
              //     const Text("focusFeed", style: kHeadingextStyle),
              //     Image.asset("assets/images/user.png"),
              //   ],
              // ),
              const Text("Explore", style: kHeadingextStyle),
              const SizedBox(height: 10),
              FeedContainer(
                image: imagenames[0],
                title: titlenames[0],
                feed: feednames[0],
                author: authornames[0],
                link:
                    "https://csipr.nliu.ac.in/copyright/unleashing-the-copyright-protection-jedi-evaluating-the-effectiveness-of-dynamic-injunctions/",
              ),
              FeedContainer(
                image: imagenames[1],
                title: titlenames[1],
                feed: feednames[1],
                author: authornames[01],
                link:
                    "https://csipr.nliu.ac.in/miscellaneous/navigating-indian-copyright-framework-in-the-age-of-ai-generated-works/",
              ),
              FeedContainer(
                image: imagenames[0],
                title: titlenames[0],
                feed: feednames[0],
                author: authornames[0],
                link:
                    "https://csipr.nliu.ac.in/copyright/intermediary-liability-in-copyright-claim-over-user-generated-content/",
              ),
              FeedContainer(
                image: imagenames[1],
                title: titlenames[1],
                feed: feednames[1],
                author: authornames[01],
                link: "https://www.wired.com/gallery/best-android-phones",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
