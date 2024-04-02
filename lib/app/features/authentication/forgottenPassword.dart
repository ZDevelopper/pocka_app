import 'package:flutter/material.dart';
import 'package:pocka_app/app/features/authentication/codeRecuperation.dart';
import 'package:pocka_app/app/features/authentication/signin.dart';

class ForgottenPasswordScreen extends StatefulWidget {
  @override
  _ForgottenPasswordScreenState createState() =>
      _ForgottenPasswordScreenState();
}

class _ForgottenPasswordScreenState extends State<ForgottenPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 245, 245, 245),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 245, 245, 245),
        ),
        body: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Center(
              child: Column(children: [
                Container(
                  margin: EdgeInsets.only(bottom: 80.0),
                  child: const Text("Mot de passe oublié?",
                      style: TextStyle(fontSize: 30)),
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: InputBorder.none,
                            hintText: 'Email'),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your email';
                          }
                          if (!value!.contains('@')) {
                            return 'Please enter a valid email';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 16.0),
                      Container(
                          margin: const EdgeInsets.only(bottom: 16.0),
                          width: MediaQuery.of(context).size.width / 1.5,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                // TODO: Implement forgotten password functionality
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Password reset email sent'),
                                  ),
                                );
                              }
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => CodeRecuperationScreen(),
                                ),
                              );
                            },
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color(0xff00012f)),
                            ),
                            child: Container(
                                padding: EdgeInsets.all(16.0),
                                child: const Text(
                                  'Réinitiliaser le mot de passe',
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
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        const Color(0xff82c3d2)),
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
              ]),
            )));
  }
}
