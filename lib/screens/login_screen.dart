import 'package:flutter/material.dart';

import '../widget/custom_form_field.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController numeroController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
            child: ListView(
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 50,
              width: 110,
            ),
            CustomTextFormField(
              controller: numeroController,
              txtLabel: "Finday",
              vraie: false,
            ),
            CustomTextFormField(
              controller: passwordController,
              txtLabel: "Teny miafina",
              vraie: true,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RaisedButton(
                      color: Color(0xFF58595A),
                      padding: EdgeInsets.only(top: 20, bottom: 20),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(13.0))),
                      child: Text("Hiditra",
                          style: TextStyle(color: Colors.white)),
                      onPressed: () {}),
                  RaisedButton(
                      color: Color(0xffA1112a),
                      padding: EdgeInsets.only(
                          top: 20, bottom: 20, left: 10, right: 10),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(13.0))),
                      child: Text("Hisoratra anarana",
                          style: TextStyle(color: Colors.white)),
                      onPressed: () {
                        Navigator.pushNamed(context, '/commande');
                      })
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
