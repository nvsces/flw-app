import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
  }

  Future<void> _onPressedLogInButton(BuildContext context) async {
    var provider = context.read<AuthProvider>();
    provider.loginVK();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Colors.white,
              Color(0xffe69528),
              // Color(0xff521707),
            ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox.shrink(),
            Column(
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  height: 250.0,
                ),
                const SizedBox(height: 20.0),
                GradientText(
                  'Попутчики в Земетчино',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    // color: Color(0xff521707),
                    fontSize: 40.0,
                    fontWeight: FontWeight.w600,
                  ),
                  colors: const [
                    Color(0xff521707),
                    Color(0xff17542b),
                  ],
                )
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 30.0, right: 30.0, bottom: 40.0),
              child: RawMaterialButton(
                onPressed: () {
                  _onPressedLogInButton(context);
                },
                child: Container(
                  height: 54.0,
                  decoration: BoxDecoration(
                    // color: Color(0xff17542b),
                    border: Border.all(
                      color: Color(0xff521707),
                      // color: Colors.white,
                    ),
                    gradient: const LinearGradient(colors: [
                      Color(0xff17542b),
                      Color(0xff521707),
                    ]),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: const Center(
                    child: Text(
                      'Войти через VK',
                      style: TextStyle(
                        // color: Color(0xff521707),
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
