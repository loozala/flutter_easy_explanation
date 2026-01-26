import 'package:flutter/material.dart';
import 'home_page.dart';
import 'notes.dart';

class LandingPage4 extends StatelessWidget {
  const LandingPage4({super.key});

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
                  const SizedBox(height: 120),

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

                  /// NEC BUTTON
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: _actionButton(
                      title: "NEC Licence Preparation",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                        );
                      },
                    ),
                  ),

                  const SizedBox(height: 24),

                  /// NOTES BUTTON
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: _actionButton(
                      title: "Notes",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Notes(),
                          ),
                        );
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

  /// ACTION BUTTON
  Widget _actionButton({required String title, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color(0xffF7F5FF),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          title,
          style: const TextStyle(
            color: Color(0xff2492ba),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
