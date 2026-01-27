import 'package:flutter/material.dart';
import 'landing_page_4.dart';

class LandingPage3 extends StatelessWidget {
  const LandingPage3({super.key});

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
                  const SizedBox(height: 150),

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

                  const SizedBox(height: 150),

                  /// GOOGLE SIGN IN BUTTON
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LandingPage4(),
                          ),
                        );
                      },
                      child: Container(
                        height: 56,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.g_mobiledata,
                              color: Colors.red,
                              size: 32,
                            ),
                            SizedBox(width: 8),
                            Text(
                              "Sign in with Google",
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  /// TERMS TEXT
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      "By signing in you agree to our Terms of Service and Privacy Policy.",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white70, fontSize: 11),
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
                      MaterialPageRoute(
                        builder: (context) => const LandingPage4(),
                      ),
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
