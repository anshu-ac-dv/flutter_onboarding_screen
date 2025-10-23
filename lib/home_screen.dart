import 'package:flutter/material.dart';
import 'package:flutter_onboarding_screen/main_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        scrollPhysics: BouncingScrollPhysics(),
        pages: [
          PageViewModel(
            titleWidget: Text(
              "This is first title",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            body:
                "Write the more description of the page. Write the more description of the page. Write the more description of the page. Write the more description of the page. Write the more description of the page. ",
            image: Image.asset("images/first.jpg", height: 400, width: 400),
          ),
          PageViewModel(
            titleWidget: Text(
              "This is first title",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            body:
                "Write the more description of the page. Write the more description of the page. Write the more description of the page. Write the more description of the page. Write the more description of the page. ",
            image: Image.asset("images/second.jpg", height: 400, width: 400),
          ),
          PageViewModel(
            titleWidget: Text(
              "This is first title",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            body:
                "Write the more description of the page. Write the more description of the page. Write the more description of the page. Write the more description of the page. Write the more description of the page. ",
            image: Image.asset("images/thired.jpg", height: 400, width: 400),
          ),
        ],
        onDone: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MainScreen()),
          );
        },
        onSkip: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MainScreen()),
          );
        },
        showSkipButton: true,
        skip: Text(
          "skip",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.blue,
          ),
        ),
        next: Icon(Icons.arrow_forward, color: Colors.blue),
        done: Text(
          "done",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.blue,
          ),
        ),
        dotsDecorator: DotsDecorator(
          size: Size.square(10.0),
          activeSize: Size(20.0, 10.0),
          color: Colors.black,
          activeColor: Colors.blue,
          spacing: EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
      ),
    );
  }
}
