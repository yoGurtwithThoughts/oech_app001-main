import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:oech_app001/widgets/btn_widget.dart';
import 'package:oech_app001/widgets/s2_text_field_widget.dart';

class ForgotPasswoprdPage extends StatefulWidget {
  // static const routeName = '/forgot_password-page';
  const ForgotPasswoprdPage({super.key});

  @override
  State<ForgotPasswoprdPage> createState() => _ForgotPasswoprdPageState();
}

class _ForgotPasswoprdPageState extends State<ForgotPasswoprdPage> {
  final TextEditingController _emailController = TextEditingController();
  //final TextEditingController _passwordController = TextEditingController();
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
              const Text('Forgot Password',
                  style: TextStyle(
                    fontSize: 24,
                    color: Color.fromRGBO(58, 58, 58, 1),
                    fontWeight: FontWeight.w500,
                  )),
              const Text('Enter your email address',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(167, 167, 167, 1))),
              const SizedBox(height: 56),
              Container(
                padding: EdgeInsets.zero,
                child:  S2TextFieldWidget(
                  controller: _emailController,
                  textTitle: 'Email Address',
                  textTitleColor: Color.fromRGBO(167, 167, 167, 1),
                  textSize: 14,
                  hintText: '***********@mail.com',
                ),
              ),

              // //Кнопка соглашения
              // Container(
              //   padding: EdgeInsets.zero,
              //   child: Row(
              //     children: <Widget>[
              //       SizedBox(
              //         child: Checkbox(
              //             activeColor: const Color.fromARGB(255, 5, 96, 250),
              //             value: checkedValue,
              //             onChanged: (newValue) {
              //               setState(() {
              //                 checkedValue = newValue!;
              //               });
              //             }),
              //       ),

              //       //Пользовательское соглашение:

              //       const Row(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           Text('Remember password',
              //               style: TextStyle(
              //                   fontSize: 14,
              //                   fontWeight: FontWeight.w400,
              //                   color: Color.fromRGBO(167, 167, 167, 1))),
              //           SizedBox(width: 50),
              //           Text(
              //             'forgot password',
              //             style: TextStyle(
              //                 fontSize: 14,
              //                 fontWeight: FontWeight.w500,
              //                 color: Color.fromARGB(255, 5, 96, 250)),
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),

              const SizedBox(height: 56),
              Column(
                children: [
                  SizedBox(
                    child: ButtonWidget(
                      buttonName: 'Send OTP',
                      buttonColor: const Color.fromRGBO(167, 167, 167, 1),
                      onPressed: () { Navigator.pushNamed(context, '/newpass');},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 55),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'Remember password? Back to ',
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(167, 167, 167, 1)),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Sign in',
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(5, 96, 250, 1)),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushNamed(context, '/signin');
                              },
                          ),
                        ],
                      ),
                    ),
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
