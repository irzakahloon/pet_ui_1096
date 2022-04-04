import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.orange,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              )),
          child: Center(
            child: SizedBox(
              height: double.infinity,
              width: 400,
              // color: Colors.grey,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          imageBox(
                            image: 'assets/images/gallery.PNG',
                          ),
                          const SizedBox(
                            width: 250,
                          ),
                          imageBox(
                            image: 'assets/images/logo.PNG',
                            width: 35,
                            height: 35,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      uiText(
                        title: 'Hi Kamran',
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                      uiText(
                        title: '   Good Morning!',
                        fontSize: 20,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Center(
                        child: Image.asset('assets/images/Group 13.png'),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      uiText(
                        title: 'Adopt Pet',
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/Group 17.png',
                          ),
                          Image.asset(
                            'assets/images/Group 18.png',
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/Group 18 (1).png',
                          ),
                          Image.asset(
                            'assets/images/Group 19.png',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
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

  imageBox({
    required String image,
    double height = 30,
    double width = 30,
  }) {
    return SizedBox(
      height: height,
      width: width,
      child: Image.asset(image),
    );
  }
}
