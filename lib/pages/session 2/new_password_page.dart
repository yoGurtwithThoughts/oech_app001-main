import 'package:flutter/material.dart';
import 'package:oech_app001/widgets/btn_widget.dart';
import 'package:oech_app001/widgets/s2_text_field_widget.dart';

class NewPasswordPage extends StatefulWidget {
  // static const routeName = '/new_password-page';
  const NewPasswordPage({super.key});

  @override
  State<NewPasswordPage> createState() => _NewPasswordPageState();
}

class _NewPasswordPageState extends State<NewPasswordPage> {
  //final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
 final TextEditingController _confirmPasswordController=TextEditingController();
 // final TextEditingController _phoneNumberController =TextEditingController();
  bool checkedValue = false;
  @override
  void initState() {
    super.initState();
  }
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
              const Text('New Password',
                  style: TextStyle(
                    fontSize: 24,
                    color: Color.fromRGBO(58, 58, 58, 1),
                    fontWeight: FontWeight.w500,
                  )),
              const Text('Enter new password',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(167, 167, 167, 1))),
              const SizedBox(height: 56),
              Container(
                padding: EdgeInsets.zero,
                width: 362,
                child:  S2TextFieldWidget(
                  controller: _passwordController,
                  textTitle: 'Password',
                  textTitleColor: Color.fromRGBO(167, 167, 167, 1),
                  textSize: 14,
                  hintText: '**********',
                ),
              ),
              const SizedBox(height: 24),
              Container(
                padding: EdgeInsets.zero,
                width: 362,
                child: S2TextFieldWidget(
                  controller: _confirmPasswordController,
                  textTitle: 'Confirm Password',
                  textTitleColor: Color.fromRGBO(167, 167, 167, 1),
                  textSize: 14,
                  hintText: '**********',
                ),
              ),
              const SizedBox(height: 56),
              Column(
                children: [
                  SizedBox(
                    width: 362,
                    child: ButtonWidget(
                      buttonName: 'Log in',
                      buttonColor: const Color.fromRGBO(167, 167, 167, 1),
                      onTap: () {
                        // Navigator.pushNamed(context, '/signin');
                        Navigator.pushNamed(context, '/home');
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
