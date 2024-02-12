import 'package:flutter/material.dart';
import 'package:oech_app001/widgets/custom_bottom_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
      bottomNavigationBar: CustomBottomBar(
      
      ),
    );
  }
}