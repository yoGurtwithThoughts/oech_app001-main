import 'package:flutter/material.dart';
import 'package:oech_app001/widgets/custom_bottom_bar.dart';

class HomPage extends StatelessWidget {
  const HomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 171, vertical: 378),
        child: Text(
          'Home',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(0, 0, 0, 1)),
        ),
      )
      ),
      bottomNavigationBar: const CustomBottomBar(),
    );
  }
}