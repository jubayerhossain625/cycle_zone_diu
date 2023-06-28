import 'package:flutter/material.dart';

import 'components/_body.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
     body: SafeArea(
      child: BodyWidget()
      )
    );
  }
}
