import 'package:pocka_app/app/features/authentication/forgottenPassword.dart';
import 'package:pocka_app/app/features/authentication/services/auth_service.dart';
import 'package:pocka_app/app/features/authentication/signin.dart';
import 'package:pocka_app/app/menu/menu.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 245, 245, 245),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 245, 245, 245),
        ),
        body: Padding(
          padding: EdgeInsets.all(40.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 30.0),
                  child: const Text("Créer un compte ",
                      style: TextStyle(fontSize: 30)),
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 15.0),
                    child: const Text(
                      "Pour pouvoir profiter pleinement de toutes les fonctionnalités de POCKA, je t’invite à créer ton compte ! Tu pourras télécharger tout les documents dont tu auras besoin . ",
                      style: TextStyle(fontSize: 12),
                      textAlign: TextAlign.center,
                    )),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: InputBorder.none,
                        hintText: 'Nom'),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: TextField(
                        controller: _emailController,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: InputBorder.none,
                          hintText: 'Email',
                        ))),
                const SizedBox(
                  height: 15.0,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: InputBorder.none,
                      hintText: 'Mot de passe',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Padding(
                    padding: EdgeInsets.only(bottom: 30.0),
                    child: Row(
                      children: [
                        Container(
                            width: 24,
                            height: 24,
                            child: Checkbox(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(2.0)),
                              side: MaterialStateBorderSide.resolveWith(
                                (states) => const BorderSide(
                                    width: 1.0, color: Color((0xff82c3d2))),
                              ),
                              fillColor:
                                  MaterialStateProperty.resolveWith((states) {
                                return const Color(0xff82c3d2);
                              }),
                              value:
                                  false, // Vous pouvez définir l'état de la case à cocher ici
                              onChanged: (bool? newValue) {
                                // Gérer le changement d'état ici
                              },
                            )),

                        const SizedBox(
                            width:
                                8.0), // Espace entre la case à cocher et le texte
                        const Padding(
                            padding: EdgeInsets.only(right: 30.0),
                            child: Text(
                              'Se souvenir de moi',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff82c3d2), // Couleur du texte
                              ),
                            )),
                        const Expanded(
                          child:
                              SizedBox(), // Cela occupera l'espace restant à droite
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ForgottenPasswordScreen(),
                            ));
                          },
                          child: const Text(
                            'Mot de passe oublié ?',
                            style: TextStyle(
                              color:
                                  Color(0xff00012f), // Couleur du texte du lien
                              decoration: TextDecoration
                                  .underline, // Texte souligné pour ressembler à un lien
                            ),
                          ),
                        )
                      ],
                    )),
                Container(
                    margin: EdgeInsets.only(bottom: 16.0),
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () async {
                        final message = await AuthService().registration(
                          email: _emailController.text,
                          password: _passwordController.text,
                        );
                        if (message!.contains('Success')) {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => MenuPage()));
                        }
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(message),
                          ),
                        );
                      },
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        )),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xff00012f)),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(16.0),
                        child: const Text("S'inscrire",
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
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
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
                        'Tu as déjà un compte ? ',
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
                            'Se connecter',
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
        ));
  }
}
