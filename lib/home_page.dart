import 'package:flutter/material.dart';
import 'about_us.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// WELCOME CARD
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xff2492ba), Color(0xff15566d)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Welcome back,",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Loozala\nBajracharya",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            "Ready to learn easily?",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CircleAvatar(
                      radius: 32,
                      backgroundColor: Colors.white.withOpacity(0.2),
                      child: const CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.white,
                        child: Text(
                          "E",
                          style: TextStyle(
                            color: Color(0xff2492ba),
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              /// LIST ITEMS
              _menuTile(
                icon: Icons.menu_book,
                color: Colors.orange,
                title: "Syllabus",
              ),
              _menuTile(
                icon: Icons.subject,
                color: Colors.green,
                title: "Subjects",
              ),
              _menuTile(
                icon: Icons.school,
                color: Colors.yellow.shade700,
                title: "Course",
              ),

              const SizedBox(height: 20),

              /// STUDY TOOLS
              const Text(
                "Study Tools",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 12),

              // Add top padding inside GridView
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                padding: const EdgeInsets.only(top: 10, bottom: 30),
                childAspectRatio: 2.5,
                children: const [
                  _ToolCard(
                    icon: Icons.help_outline,
                    color: Colors.blue,
                    title: "Questions",
                  ),
                  _ToolCard(
                    icon: Icons.edit_note,
                    color: Colors.pink,
                    title: "Notes",
                  ),
                  _ToolCard(
                    icon: Icons.bookmark,
                    color: Colors.green,
                    title: "Bookmark",
                  ),
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AboutUs()),
                    );
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(top: 12),
                    child: Text(
                      "Next →",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff2492ba),
                        fontWeight: FontWeight.w600,
                      ),
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

  /// MENU TILE WIDGET
  Widget _menuTile({
    required IconData icon,
    required Color color,
    required String title,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 8),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: color,
            child: Icon(icon, color: Colors.white),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
          const Icon(Icons.chevron_right),
        ],
      ),
    );
  }
}

/// STUDY TOOL CARD
class _ToolCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String title;

  const _ToolCard({
    required this.icon,
    required this.color,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 8),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 18,
            backgroundColor: color.withOpacity(0.2),
            child: Icon(icon, color: color, size: 20),
          ),
          const SizedBox(width: 12),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
