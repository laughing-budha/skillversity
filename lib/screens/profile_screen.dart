import 'package:flutter/material.dart';
import 'package:abibas/widgets/progres_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Profile"),
        backgroundColor: Colors.green[400],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            Center(
              child: Text(
                "Hello, Aswin",
                style: TextStyle(
                  color: Colors.green[400],
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: SizedBox(
                child: Image.asset("assets/images/user.png"),
                height: 200,
              ),
            ),
            const SizedBox(height: 30),
            ProgresCard(conti: false),
            const SizedBox(height: 10),
            ProgresCard(
              conti: false,
              cName: "Communication",
              percS: "45%",
              level: "Advanced",
              perc: 45,
            ),
            const SizedBox(height: 10),
            ListTile(
              onTap: () {
                // Implement your settings logic here.
              },
              leading: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.green.withOpacity(0.3),
                ),
                child: const Icon(
                  Icons.settings,
                  color: Colors.green,
                ),
              ),
              title: const Text(
                'Settings',
                style: TextStyle(
                  fontSize: 19.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 10),
            ListTile(
              onTap: () {
                // Implement your account logic here.
              },
              leading: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.green.withOpacity(0.3),
                ),
                child: const Icon(
                  Icons.account_circle,
                  color: Colors.green,
                ),
              ),
              title: const Text(
                'Account',
                style: TextStyle(
                  fontSize: 19.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 10),
            ListTile(
              onTap: () {
                // Implement your logout logic here.
              },
              leading: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.green.withOpacity(0.3),
                ),
                child: const Icon(
                  Icons.logout,
                  color: Colors.green,
                ),
              ),
              title: const Text(
                'Logout',
                style: TextStyle(
                  fontSize: 19.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
