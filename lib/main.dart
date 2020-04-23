// square PNG Designed By 云川 from <a href="https://pngtree.com/">Pngtree.com</a>

import 'package:flutter/material.dart';
import 'welcome_screen.dart';
import 'login_screen.dart';
import 'registration_screen.dart';
import 'box.dart';

void main() => runApp(BoxCounter());

class BoxCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: WelcomeScreen.id, routes: {
      WelcomeScreen.id: (context) => WelcomeScreen(),
      LoginScreen.id: (context) => LoginScreen(),
      RegistrationScreen.id: (context) => RegistrationScreen(),
      BoxScreen.id: (context) => BoxScreen(),
    });
  }
}
