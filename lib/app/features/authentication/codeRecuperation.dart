import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pocka_app/app/features/authentication/passwordModified.dart';
import 'package:pocka_app/app/features/authentication/signin.dart';

class CodeRecuperationScreen extends StatefulWidget {
  const CodeRecuperationScreen({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _CodeRecuperationScreenState createState() => _CodeRecuperationScreenState();
}

class _CodeRecuperationScreenState extends State<CodeRecuperationScreen> {
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
              margin: const EdgeInsets.only(bottom: 80.0),
              child: const Text("Regarde ton mail",
                  style: TextStyle(fontSize: 30)),
            ),
            const Text(
              'Nous venons d’envoyer le lien de récupération de mot de passe à brandonelouis@gmial.com',
              style: TextStyle(fontSize: 18.0),
            ),
            Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 30.0), // Marges de 50 pixels en haut et en bas
                child: SvgPicture.asset(
                  'assets/images/check_mail.svg',
                  // Vous pouvez ajuster la taille de l'image SVG ici
                  width: 150,
                  height: 150,
                )),
            const SizedBox(height: 16.0),
            Container(
                margin: EdgeInsets.only(bottom: 16.0),
                width: MediaQuery.of(context).size.width / 1.5,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const PasswordModifiedScreen(),
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
                        'Ouvre ton mail',
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
                    ))),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Tu n’as pas reçu de mail ? ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      // Autres styles de texte ici
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()),
                        );
                      },
                      child: const Text(
                        'Renvoyer',
                        style: TextStyle(
                          fontSize: 12,
                          decoration: TextDecoration.underline,
                          color: Color.fromARGB(255, 240, 96, 77),
                          // Couleur du lien
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
