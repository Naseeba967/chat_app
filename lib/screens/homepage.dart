import 'package:chat_app/screens/Sign_up.dart';
import 'package:chat_app/screens/login_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                " Fast Chat",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            homeScreenButton(
              'login',
              () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
              },
            ),
            const SizedBox(
              height: 40,
            ),
            homeScreenButton('Sign Up', () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SignUp()));
            })
          ],
        ),
      ),
    );
  }

  Widget homeScreenButton(String text, Function function) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: const ShapeDecoration(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4))),
          color: Colors.blue),
      child: MaterialButton(
          onPressed: () {
            function();
            
          },
          child: Text(
            text,
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          )),
    );
  }
}
