import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pocka_app/app/features/authentication/signin.dart';

class PasswordModifiedScreen extends StatefulWidget {
  const PasswordModifiedScreen({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _PasswordModifiedScreenState createState() => _PasswordModifiedScreenState();
}

class _PasswordModifiedScreenState extends State<PasswordModifiedScreen> {
  final TextEditingController _codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 245, 245),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 245, 245, 245),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 40.0),
              child: const Text("Modifié avec succès ",
                  style: TextStyle(fontSize: 30)),
            ),
            const Text(
              'Ton mot de passe vient d’être modifié, pour éviter ce genre de problème je t’invite à le changer régulièrement. ',
              style: TextStyle(fontSize: 18.0),
            ),
            Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 30.0), // Marges de 50 pixels en haut et en bas
                child: SvgPicture.asset(
                  'assets/images/password_modified.svg',
                  // Vous pouvez ajuster la taille de l'image SVG ici
                  width: 150,
                  height: 150,
                )),
            const SizedBox(height: 16.0),
            Container(
                margin: EdgeInsets.only(bottom: 16.0),
                width: MediaQuery.of(context).size.width / 1.5,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const LoginScreen(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xff00012f)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                  ),
                  child: Container(
                      padding: EdgeInsets.all(16.0),
                      //width: MediaQuery.of(context).size.width / 1.5,
                      child: const Text(
                        'Continuer',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      )),
                )),
            Container(
                margin: EdgeInsets.only(bottom: 16.0),
                width: MediaQuery.of(context).size.width / 1.5,
                child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xff82c3d2)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => const LoginScreen(),
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(16.0),
                      //width: MediaQuery.of(context).size.width / 1.5,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Retour à la connexion",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff00012f),
                              ))
                        ],
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}
