import 'package:flutter/material.dart';

class Screen_Login extends StatefulWidget {
  const Screen_Login({super.key});

  @override
  State<Screen_Login> createState() => _Screen_LoginState();
}

class _Screen_LoginState extends State<Screen_Login> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();
  String yourname = '';
  String yourpassword = '';
  bool _obsecureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Form LOGIN'),
      ),

      body:
      Form(
        key: formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("Your name is $yourname And your password is $yourpassword "),
            ),

                Container(
                  child: TextFormField(
                    controller: username,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: "user name",
                      ),
                    ),
                  ),
                  
                Container(
                  child: TextFormField(
                    controller: password,
                    obscureText: _obsecureText,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: "your password",
                    ),
                  ),
                ),
                TextButton(
                onPressed: () {
                setState(() {
                  yourname = username.text;
                  yourpassword = password.text;
                });
              },
              child: const Text('Submit'),
              ),
              ],
            ),
          ),
    );
  }
}