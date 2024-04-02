import 'package:flutter/material.dart';
import 'package:pocka_app/app/features/authentication/signin.dart';

class OpeningPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff00012f),
        body: Center(
          child: Column(children: [
            Image.asset(
              'assets/images/logo.png',
              width: MediaQuery.of(context).size.width,
              height: 200,
            ),
            Image.asset(
              'assets/images/welcome.png',
              width: MediaQuery.of(context).size.width,
              //height: 200,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(color: Colors.white, width: 1),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
              child: const Text(
                'Commencer',
                style: TextStyle(fontSize: 30),
              ),
            )
          ]),
        ));
  }
}
