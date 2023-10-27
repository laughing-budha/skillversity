
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_one/root_page.dart';

void main() {
    WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(textTheme: GoogleFonts.dmSansTextTheme()),
    home: const MaterialApp(home: RootApp()),
  ));
}
