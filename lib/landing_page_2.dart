import 'package:flutter/material.dart';
import 'landing_page_3.dart';
import 'home_page.dart';

class LandingPage2 extends StatelessWidget {
  const LandingPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff2492ba), Color(0xff15566d)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              /// MAIN CONTENT
              Column(
                children: [
                  const SizedBox(height: 100),

                  /// LOGO
                  Container(
                    alignment: Alignment.center,
                    width: 210,
                    height: 210,
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(300),
                      boxShadow: const [
                        BoxShadow(color: Color(0xdd2596be), spreadRadius: 50),
                      ],
                    ),
                    child: const Text(
                      'E',
                      style: TextStyle(
                        color: Color(0xff2596b3),
                        fontSize: 150,
                        fontWeight: FontWeight.w900,
                        height: 1,
                      ),
                    ),
                  ),

                  const SizedBox(height: 80),

                  /// TITLE
                  const Text(
                    "Welcome to",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "Ezexplanation",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 12),

                  /// DESCRIPTION
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      "Your comprehensive companion for BCA and BSc. CSIT studies, providing clear notes, practical guidance, and exam-oriented learning materials.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  const Spacer(),

                  /// PAGE INDICATOR
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 32,
                        height: 6,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.4),
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.4),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 30),

                  /// NEXT BUTTON
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LandingPage3(),
                          ),
                        );
                      },
                      child: Container(
                        height: 56,
                        width: double.infinity,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Text(
                          "Next",
                          style: TextStyle(
                            color: Color(0xff2492ba),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),
                ],
              ),

              /// SKIP BUTTON
              Positioned(
                top: 12,
                right: 16,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  child: const Text(
                    "Skip",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
