import 'package:flutter/material.dart';
import 'package:flutter_easy_explanation/landing_page_2.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  late Animation<double> _logoFade;
  late Animation<double> _logoScale;

  late Animation<double> _textFade;
  late Animation<double> _textScale;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    /// LOGO animation
    _logoFade = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.5, curve: Curves.easeIn),
      ),
    );

    _logoScale = Tween<double>(begin: 0.6, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.5, curve: Curves.easeOutCubic),
      ),
    );

    /// TEXT animation
    _textFade = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.5, 1.0, curve: Curves.easeIn),
      ),
    );

    _textScale = Tween<double>(begin: 0.85, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.5, 1.0, curve: Curves.easeOutCubic),
      ),
    );

    /// Start animation then navigate
    _controller.forward().then((_) async {
      await Future.delayed(const Duration(milliseconds: 500));
      if (!mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const LandingPage2()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff2492ba), Color(0xff15566d)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ///  Animated Logo
            FadeTransition(
              opacity: _logoFade,
              child: ScaleTransition(
                scale: _logoScale,
                child: Container(
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
                      height: 1.0,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 90),

            /// Animated Text
            FadeTransition(
              opacity: _textFade,
              child: ScaleTransition(
                scale: _textScale,
                child: const Text(
                  "EASY EXPLANATION",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
