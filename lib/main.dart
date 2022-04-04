import 'package:flutter/material.dart';
import 'package:pet_ui/homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: PetUIScreen()),
    );
  }
}

class PetUIScreen extends StatelessWidget {
  const PetUIScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFF9A07),
              Color.fromARGB(255, 255, 179, 0),
              Color(0xFFFF9A07),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: SizedBox(
          height: double.infinity,
          width: 400,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  uiText(
                      title: 'GET PET',
                      fontSize: 58,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  const SizedBox(height: 40),
                  Image.asset('assets/images/Group 1.png'),
                  const SizedBox(height: 40),
                  uiText(
                      title: '''Find your favorite
 pet close to you''',
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  const SizedBox(height: 10),
                  uiText(
                      title: '''Join and discover your favorit pet in
                      your loayality''',
                      fontSize: 12,
                      color: Colors.yellow.shade200,
                      fontWeight: FontWeight.bold),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 40,
                    width: 200,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                        );
                      },
                      child: uiText(
                        title: 'Get Started',
                        color: const Color.fromARGB(255, 248, 223, 81),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  uiText({
    required String title,
    Color color = Colors.black,
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.normal,
  }) {
    return Text(
      title,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
