import 'package:flutter/material.dart';
import 'package:notary_app/utilitywidgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
              SpaceWidget(40),
              CircleAvatar(
                radius: 50,
                child: Icon(
                  Icons.person,
                  size: 50,
                ),
              ),
              SpaceWidget(20),
              InputWidget(
                hint: "Input Text with Label",
                label: "First Name",
              ),
              SpaceWidget(20),
              InputWidget(
                hint: "Input Text with Label",
                label: "First Name",
              ),
              SpaceWidget(20),
              InputWidget(
                hint: "Input Text with Label",
                label: "First Name",
              ),
              SpaceWidget(20),
              InputWidget(
                hint: "Input Text with Label",
                label: "First Name",
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "Note: To Change your profile information,please visit the www.thenotaryapp.com from your desktop",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class InputWidget extends StatelessWidget {
  final String label;
  final String hint;
  const InputWidget({
    Key? key,
    required this.label,
    required this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 12),
          hintText: hint,
          hintStyle: TextStyle(fontSize: 12),
          alignLabelWithHint: true,
          labelText: label,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelStyle: TextStyle(fontSize: 20)),
    );
  }
}
