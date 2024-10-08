import 'package:flutter/material.dart';
import 'package:movie_app/widget/button.dart';
import 'package:movie_app/widget/text.dart';
import 'package:movie_app/widget/text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isObscure = true;

  final TextEditingController _usercontroller = TextEditingController();
  final TextEditingController _passcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff222831),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, top: 40),
              child: Row(
                children: [
                  SvgPicture.asset(
                    alignment: Alignment.topLeft,
                    'assets/Logo.svg',
                    height: 40,
                  ),
                ],
              ),
            ),
            Spacer(),
            MyText(
              data: "Login",
              size: 30,
              margin: EdgeInsets.fromLTRB(25, 0, 0, 20),
            ),
            MyTextField(
              controller: _usercontroller,
              isObscure: false,
              hintText: 'Username',
              labelText: 'Username',
              margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
              icon: Icons.person_2_rounded,
              width: 340,
            ),
            MyTextField(
              controller: _passcontroller,
              isObscure: true,
              hintText: 'Password',
              labelText: 'Password',
              margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
              icon: Icons.shield_rounded,
              width: 340,
            ),
            MyButton(
              onPressed: () {
                if (_usercontroller.text == 'a' &&
                    _passcontroller.text == 'a') {
                  Get.toNamed('/dashboard');
                } else {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Warning!'),
                      content: const Text('Username atau Password salah!'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  );
                }
              },
              label: 'Login',
              fontSize: 18,
              contentPadding: EdgeInsets.fromLTRB(0, 12, 0, 25),
              margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
              width: 340,
            )
          ],
        ),
      ),
    );
  }
}
