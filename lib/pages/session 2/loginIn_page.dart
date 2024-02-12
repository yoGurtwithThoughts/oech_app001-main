import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:oech_app001/widgets/btn_widget.dart';
import 'package:oech_app001/widgets/s2_text_field_widget.dart';

class LoginPage extends StatefulWidget {
  // static const routeName = '/log_in-page';
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
 //final TextEditingController _confirmPasswordController=TextEditingController();
 // final TextEditingController _phoneNumberController =TextEditingController();
  bool checkedValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 24, top: 170),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text('Welcome Back',
                  style: TextStyle(
                    fontSize: 24,
                    color: Color.fromRGBO(58, 58, 58, 1),
                    fontWeight: FontWeight.w500,
                  )),
              const Text('Fill in your email and password to continue',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(167, 167, 167, 1))),
              const SizedBox(height: 18),
              Container(
                width: 362,
                padding: EdgeInsets.zero,
                child:  S2TextFieldWidget(
                  controller: _emailController,
                  textTitle: 'Email Address',
                  textTitleColor: Color.fromRGBO(167, 167, 167, 1),
                  textSize: 14,
                  hintText: '***********@mail.com',
                ),
              ),
              Container(
                width: 362,
                padding: EdgeInsets.zero,
                child:  S2TextFieldWidget(
                  controller: _passwordController,
                  textTitle: 'Password',
                  textTitleColor: Color.fromRGBO(167, 167, 167, 1),
                  textSize: 14,
                  hintText: '**********',
                ),
              ),

              //Кнопка соглашения
              Container(
                padding: EdgeInsets.zero,
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      child: Checkbox(
                          activeColor: const Color.fromARGB(255, 5, 96, 250),
                          value: checkedValue,
                          onChanged: (newValue) {
                            setState(() {
                              checkedValue = newValue!;
                            });
                          }),
                    ),

                    //Пользовательское соглашение:

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Remember password',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(167, 167, 167, 1))),
                        const SizedBox(width: 50),
                        TextButton(
                                onPressed: () {  Navigator.pushNamed(context, '/forgotpass'); }, 
                                child: Text('forgot password',
                                  style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 5, 96, 250)), ),
                           
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 200),
              Column(
                children: [
                  SizedBox(
                    width: 362,
                    child: ButtonWidget(
                      buttonName: 'Log in ',
                      buttonColor: const Color.fromRGBO(167, 167, 167, 1),
                      onPressed: () {
                        Navigator.pushNamed(context, '/home');
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'Already have an account?',
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(167, 167, 167, 1)),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' Sign up',
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(5, 96, 250, 1)),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushNamed(context, '/signup');
                              },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Column(
                      children: [
                        Text('or sign in using',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(167, 167, 167, 1))),
                      ],
                    ),
                    const SizedBox(height: 5),
                    const Image(
                        image: AssetImage('assets/images/s2_icon_google.png'),
                        height: 16,
                        width: 16),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
