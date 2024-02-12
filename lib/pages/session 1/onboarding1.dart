import 'package:flutter/material.dart';

class Onboarding1Page extends StatelessWidget {
  const Onboarding1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f5f5),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 33),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            const SizedBox(height: 111,),
            Container(
              width: 346,
              height: 346,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/s1_Onboarding 1.png'),
                fit: BoxFit.fill)
              ),
            ),
            const SizedBox(height: 58,),
            const Text(
              'Quick Delivery At Your Doorstep',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 33,
                color: Color.fromARGB(255, 5, 96, 250),
                
              ),
            ),
            const SizedBox(height: 10,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Enjoy quick pick-up and delivery to your destination',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 21,
                  color: Color.fromARGB(255, 58, 58, 58)
                ),
              ),
            ),
            const SizedBox(height: 92,),
            Row(
              children: [
                SizedBox(
                  width: 90,
                  height: 50,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/onb3');
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                          side: const BorderSide(color: Color.fromARGB(255, 5, 96, 250), width: 1)
                        )
                      )

                    ), 
                    child: const Text('Skip', 
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromARGB(255, 5, 96, 250),
                      ),
                    ),
                    ),
                ),
                const SizedBox(width: 145),
                SizedBox(
                  width: 90,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/onb4');
                      // Navigator.pushNamed(context, '/wall');
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4), // <-- Radius
                      ),
                      backgroundColor: const Color.fromARGB(255, 5, 96, 250),
                    ), 
                    child: const Text('Next', 
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}