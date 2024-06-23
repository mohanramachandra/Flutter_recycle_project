import 'package:aldi_payment_app/HomePage.dart';

import 'package:flutter/material.dart';
import 'signup.dart';
import 'login.dart';
import 'Camera.dart';
import 'Forget_password.dart';

void main() => runApp(MaterialApp(
      initialRoute: 'login',
      routes: {
        '/': (context) => Login(),
        '/signup': (context) => signup(),
        '/Homepage': (context) => Home_page(),
        '/QRCodeScannerApp': (context) => QRCodeScannerApp(),
        '/forgetpasswod': (context) => Forgetpassword(),
      },
    ));
