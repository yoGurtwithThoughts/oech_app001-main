import 'package:flutter/material.dart';
import 'package:oech_app001/pages/session%201/holder.dart';
import 'package:oech_app001/pages/session%202/forgot_password_page.dart';
import 'package:oech_app001/pages/session%202/home-page.dart';
import 'package:oech_app001/pages/session%202/loginIn_page.dart';
import 'package:oech_app001/pages/session%201/onboarding1.dart';
import 'package:oech_app001/pages/session%201/onboarding3.dart';
import 'package:oech_app001/pages/session%201/onboarding4.dart';
import 'package:oech_app001/pages/session%202/new_password_page.dart';
import 'package:oech_app001/pages/session%202/signUp_page.dart';
import 'package:oech_app001/pages/session%203/home_page.dart';
import 'package:oech_app001/pages/session%203/profile_page.dart';
import 'package:oech_app001/pages/session%203/send_a_package.dart';
import 'package:oech_app001/pages/session%203/send_a_package_replase.dart';
import 'package:oech_app001/pages/session%204/wallet_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        // 1 session
        '/':(context) => const Onboarding1Page(),
        '/onb3':(context) => const Onboarding3Page(),
        '/onb4':(context) => const Onboarding4Page(),
        '/hold':(context) => const HolderPage(),
        // 2 session
        '/signup':(context) => const SignUpPage(),
        '/signin':(context) => const LoginPage(),
        '/forgotpass':(context) => const ForgotPasswoprdPage(),
        '/newpass':(context) => const NewPasswordPage(),
        '/hompage':(context) =>  HomPage(),
        // 3 session
        '/profile':(context) =>  ProfilePage(),
        '/sendpack':(context) =>  SendPackage(),
        '/sendpackrep':(context) =>  SendPackageReplace(),
        '/home':(context) =>  HomePage(),
        // 4 session
        '/wall':(context) =>  WalletPage(),

      },
    );
  }

  
}