import 'package:flutter/material.dart';
import 'package:oech_app001/widgets/Bottom_bar_widget.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({super.key});

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      type: BottomNavigationBarType.fixed,
      items: [
        // H O M E
        BottomBarWidget(
          icon: Icons.home,
          iconColor: _selectedIndex == 0
              ? const Color.fromRGBO(5, 96, 205, 1)
              : Colors.grey,
          textColor: _selectedIndex == 0
              ? const Color.fromRGBO(5, 96, 205, 1)
              : Colors.grey,
          text: 'Home',
          textSize: 12.0,
          fontWeight: FontWeight.w400,
          activeIconColor: const Color.fromRGBO(5, 96, 205, 1),
          activeTextColor: const Color.fromRGBO(5, 96, 205, 1),
          isActive: _selectedIndex == 0,
          iconSize: 24.0,
        ).toBottomNavigationBarItem(),

        // S E A R C H
        BottomBarWidget(
          icon: Icons.wallet_outlined,
          iconColor: _selectedIndex == 1
              ? const Color.fromRGBO(5, 96, 205, 1)
              : Colors.grey,
          textColor: _selectedIndex == 1
              ? const Color.fromRGBO(5, 96, 205, 1)
              : Colors.grey,
          text: 'Wallet',
          textSize: 12.0,
          fontWeight: FontWeight.w400,
          activeIconColor: const Color.fromRGBO(5, 96, 205, 1),
          activeTextColor: const Color.fromRGBO(5, 96, 205, 1),
          isActive: _selectedIndex == 1,
          iconSize: 24,
        ).toBottomNavigationBarItem(),

        // F A V O R I T E
        BottomBarWidget(
          icon: Icons.car_crash,
          iconColor: _selectedIndex == 2
              ? const Color.fromRGBO(5, 96, 205, 1)
              : Colors.grey,
          textColor: _selectedIndex == 2
              ? const Color.fromRGBO(5, 96, 205, 1)
              : Colors.grey,
          text: 'Track',
          textSize: 12.0,
          activeIconColor: const Color.fromRGBO(5, 96, 205, 1),
          activeTextColor: const Color.fromRGBO(5, 96, 205, 1),
          fontWeight: FontWeight.w400,
          isActive: _selectedIndex == 2,
          iconSize: 24,
        ).toBottomNavigationBarItem(),

        // P R O F I L E
        BottomBarWidget(
          icon: Icons.account_circle,
          iconColor: _selectedIndex == 3
              ? const Color.fromRGBO(5, 96, 205, 1)
              : Colors.grey,
          textColor: _selectedIndex == 3
              ? const Color.fromRGBO(5, 96, 205, 1)
              : Colors.grey,
          text: 'Profile',
          textSize: 12.0,
          activeIconColor: const Color.fromRGBO(5, 96, 205, 1),
          activeTextColor: const Color.fromRGBO(5, 96, 205, 1),
          isActive: _selectedIndex == 3,
          fontWeight: FontWeight.w400,
          iconSize: 24,
        ).toBottomNavigationBarItem(),
      ],
      // currentIndex: _selectedIndex,
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
           
            if(_selectedIndex == 0) {
              Navigator.pushNamed(context, '/hompage');
            } else if(_selectedIndex==1) {
              Navigator.pushNamed(context, '/wall');
            } else if(_selectedIndex==2) {
              Navigator.pushNamed(context, '/sendpack');
            } else {
              Navigator.pushNamed(context, '/profile');
            }
  }
        );
      },

      selectedItemColor: const Color.fromRGBO(5, 96, 205, 1),
    );
  }
}