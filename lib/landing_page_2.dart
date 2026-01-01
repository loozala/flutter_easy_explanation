import 'package:flutter/material.dart';

class LandingPage2 extends StatelessWidget {
  const LandingPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            // colors: [Color(0xff2596b3), Color(0xff114558)],
            colors: [Color(0xff2492ba), Color(0xff15566d)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Container(
                alignment: Alignment.center,
                width: 210,
                height: 210,
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(300),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xdd2596be),
                      spreadRadius: 50,
                      // blurRadius: 30,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    'E',
                    style: TextStyle(
                      color: Color(0xff2596b3),
                      fontSize: 150,
                      fontWeight: FontWeight.w900,
                      height: 1.0, // Removes extra vertical space
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 90),
            Text(
              "WELCOME TO EZEXPLANATION",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
