import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SessionOne extends StatelessWidget {
  const SessionOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) {
                return const SessionOne();
              }),
            );
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
          color: Colors.green,
        ),
        elevation: 0,
        backgroundColor: const Color(0xfffffbf6),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Introduction",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 10),
            const Text(
              "Patents and trademarks are important forms of intellectual property protection.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            SvgPicture.asset(
              "assets/icons/finance.svg",
            ),
            const SizedBox(height: 20),
            const Text(
              "Types of Patents",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 10),
            const Text(
              "There are several types of patents, including:",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            const Text("- Utility patents", style: TextStyle(fontSize: 16)),
            const Text("- Design patents", style: TextStyle(fontSize: 16)),
            const Text("- Plant patents", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 20),
            // Image.network(
            //   "https://example.com/patent_types_image.jpg",
            //   height: 200,
            //   width: double.infinity,
            //   fit: BoxFit.cover,
            // ),
            const SizedBox(height: 20),
            const Text(
              "Types of Trademarks",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 10),
            const Text(
              "Trademarks come in various forms, including:",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            const Text("- Word marks", style: TextStyle(fontSize: 16)),
            const Text("- Logo marks", style: TextStyle(fontSize: 16)),
            const Text("- Service marks", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 20),
            // Image.network(
            //   "https://example.com/trademark_types_image.jpg",
            //   height: 200,
            //   width: double.infinity,
            //   fit: BoxFit.cover,
            // ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: SessionOne(),
  ));
}
