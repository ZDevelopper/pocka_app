import 'package:pocka_app/app/features/authentication/signup.dart';
import 'package:pocka_app/app/features/authentication/services/auth_service.dart';
import 'package:pocka_app/app/menu/menu.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 245, 245),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 245, 245, 245),
      ),
      body: Padding(
        padding: EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 30.0),
              child: const Text("Bienvenue! ", style: TextStyle(fontSize: 30)),
            ),
            Container(
                margin: EdgeInsets.only(bottom: 15.0),
                child: const Text(
                  "Sur cette application, tu découvriras toutes les informations indispensables pour faciliter tes démarches administratives.",
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.center,
                )),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  hintText: 'Email',
                  filled: true,
                  fillColor: Colors.white,
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Mot de passe',
                  filled: true,
                  fillColor: Colors.white,
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Container(
                margin: EdgeInsets.only(bottom: 16.0),
                child: ElevatedButton(
                  onPressed: () async {
                    final message = await AuthService().login(
                      email: _emailController.text,
                      password: _passwordController.text,
                    );
                    if (message!.contains('Success')) {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => MenuPage(),
                        ),
                      );
                    }
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(message),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    )),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xff00012f)),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(16.0),
                    child: const Text("Connexion",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        )),
                  ),
                )),
            Container(
                margin: EdgeInsets.only(bottom: 16.0),
                width: MediaQuery.of(context).size.width,
                child: TextButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xff82c3d2)),
                    ),
                    onPressed: () {},
                    child: Container(
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/google_logo.png',
                            height: 30,
                          ),
                          const Text("S'inscrire avec Google",
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
                    'Pas encore inscrit ? ',
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
                              builder: (context) => const CreateAccount(),
                            ));
                      },
                      child: const Text(
                        "S'inscrire",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 12,
                          color: Color.fromARGB(
                              255, 240, 96, 77), // Couleur du lien
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
