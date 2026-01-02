import 'package:flutter/material.dart';

class LandingPage4 extends StatelessWidget {
  const LandingPage4({super.key});

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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Welcome to ",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 42,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Ezexplanation",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 42,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Your comprehensive companion for BCA and BSc. CSIT studies, providing clear notes, practical guidance, and exam-oriented learning materials.",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LandingPage4()),
                );
              },
              child: Container(width: double.infinity, child: Text("next ->")),
            ),
          ],
        ),
      ),
    );
  }
}
