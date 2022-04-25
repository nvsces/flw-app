import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_provider.dart';

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
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: TextButton(
            onPressed: () {
              _onPressedLogInButton(context);
            },
            child: Text('Войти'),
          ),
        ),
      ),
    );
  }
}
