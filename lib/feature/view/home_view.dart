import 'package:flutter/material.dart';
import 'package:berkegenckaya_ui/feature/view/list_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color.fromARGB(255, 117, 149, 243), Colors.white],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const Spacer(),
                  homeViewText(context),
                  homeViewSubText(context),
                  const Spacer(),
                  /* homeViewBackground(context), */
                  startButton(context),
                ],
              )),
        ),
      ),
    );
  }

  Container homeViewText(BuildContext context) {
    return Container(
        child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Cleaning your \n inbox has never \n been easier.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF293855),
                fontSize: 32.00,
                fontWeight: FontWeight.bold,
              ),
            )));
  }

  Container homeViewSubText(BuildContext context) {
    return Container(
      child: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(
          'Clean up old subscriptions and \n       say no to email carbon!',
          style: TextStyle(
            color: Color(0xFF293855),
            fontSize: 16.00,
          ),
        ),
      ),
    );
  }

  Container startButton(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 60.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const ListPageView()),
            (route) => true,
          );
        },
        style: ElevatedButton.styleFrom(
          primary: const Color(0xFFFFFFFF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text("Get Started",
                style: TextStyle(color: Color(0xFF293855), fontSize: 15.00))),
      ),
    );
  }

  /* Expanded homeViewBackground(BuildContext context) {
    return Expanded(
      child: Image(image: AssetImage("assets/images/freelance.png")),
    );
  } */
}
