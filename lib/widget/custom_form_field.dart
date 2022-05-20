import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {Key? key,
      required TextEditingController controller,
      required String txtLabel,
      required bool vraie})
      : _controller = controller,
        _txtLabel = txtLabel,
        _vraie = vraie,
        super(key: key);

  final TextEditingController _controller;
  final String _txtLabel;
  final bool _vraie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        obscureText: _vraie,
        cursorColor: Color(0xFFA1112A),
        controller: _controller,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
            focusColor: Color(0xFFA1112A),
            hoverColor: Color(0xFFA1112A),
            fillColor: Color(0xFFA1112A),
            border: OutlineInputBorder(),
            label: Text(_txtLabel)),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "$_txtLabel ne doit pas être vide";
          }
        },
      ),
    );
  }
}
