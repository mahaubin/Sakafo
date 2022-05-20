import 'package:flutter/material.dart';

import '../widget/custom_form_field.dart';

class CommandeScreen extends StatefulWidget {
  CommandeScreen({Key? key}) : super(key: key);

  @override
  State<CommandeScreen> createState() => _CommandeScreenState();
}

class _CommandeScreenState extends State<CommandeScreen> {
  final TextEditingController nomController = TextEditingController();
  final TextEditingController prenomController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController numeroController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
            child: ListView(
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 50,
              width: 110,
            ),
            CustomTextFormField(
              controller: nomController,
              txtLabel: "Anarana",
              vraie: false,
            ),
            CustomTextFormField(
              controller: prenomController,
              txtLabel: "Fanampiny",
              vraie: false,
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
            CustomTextFormField(
              controller: passwordController,
              txtLabel: "Hamafisana teny miafina",
              vraie: true,
            ),
            Container(
              margin: EdgeInsets.only(left: 120, right: 120),
              child: RaisedButton(
                  color: Color(0xFF58595A),
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Text(
                    "Vita",
                    style: TextStyle(color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(13.0))),
                  onPressed: () {}),
            )
          ],
        )),
      ),
    );
  }
}
