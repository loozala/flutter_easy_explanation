import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          /// TOP HEADER
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 50, bottom: 30),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff2492ba), Color(0xff15566d)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Stack(
              children: [
                ///  BACK ARROW
                Positioned(
                  left: 8,
                  top: -10,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),

                /// LOGO
                Center(
                  child: Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(color: Color(0xdd2596be), blurRadius: 12),
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        "E",
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff2492ba),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          /// CONTENT
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    "About Us",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  SizedBox(height: 14),
                  Text(
                    "EasyExplanation is a learning platform designed to make computer science simple, clear, and accessible for everyone. Whether you're a beginner starting your coding journey or an experienced learner sharpening your skills, we provide easy-to-follow tutorials across programming, algorithms, data structures, AI, web development, and more.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.6,
                      color: Color(0xff5C5656),
                    ),
                  ),
                  SizedBox(height: 28),
                  Text(
                    "Our Mission",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  SizedBox(height: 14),
                  Text(
                    "Our mission is to break down complex concepts into practical, step-by-step explanations that anyone can understand. We aim to empower learners with real-world skills, foster curiosity, and support continuous growth in the ever-evolving world of technology.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.6,
                      color: Color(0xff5C5656),
                    ),
                  ),
                  SizedBox(height: 24),
                  Text(
                    "Learn smart. Code confidently. Grow with EasyExplanation.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff5C5656),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
