import 'package:flutter/material.dart';

class SubjectPage extends StatefulWidget {
  final String subjectName;

  const SubjectPage({super.key, required this.subjectName});

  @override
  State<SubjectPage> createState() => _SubjectPageState();
}

class _SubjectPageState extends State<SubjectPage> {
  int selectedIndex = 0; // 0=Syllabus, 1=Chapters, 2=Questions

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// APP BAR
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(75),
        child: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
          title: Text(
            widget.subjectName,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff2492BA), Color(0xff15566D)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
        ),
      ),

      /// BODY
      body: Column(
        children: [
          /// 🔹 TOP SECTION (SYLLABUS | CHAPTERS | QUESTIONS)
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildTab("Syllabus", 0),
                _buildTab("Chapters", 1),
                _buildTab("Questions", 2),
              ],
            ),
          ),

          const Divider(height: 1),

          /// 🔹 CONTENT
          Expanded(child: _buildContent()),
        ],
      ),
    );
  }

  /// TAB WIDGET
  Widget _buildTab(String title, int index) {
    final bool isSelected = selectedIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: isSelected ? const Color(0xff2492BA) : Colors.grey,
            ),
          ),
          const SizedBox(height: 6),
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            height: 2,
            width: isSelected ? 50 : 0,
            color: const Color(0xff2492BA),
          ),
        ],
      ),
    );
  }

  /// CONTENT SWITCHER
  Widget _buildContent() {
    switch (selectedIndex) {
      case 0:
        return _syllabusContent();
      case 1:
        return _chaptersContent();
      case 2:
        return _questionsContent();
      default:
        return Container();
    }
  }

  /// SYLLABUS CONTENT
  Widget _syllabusContent() {
    return ListView(padding: const EdgeInsets.all(16));
  }

  /// CHAPTERS CONTENT
  Widget _chaptersContent() {
    return ListView(padding: const EdgeInsets.all(16));
  }

  /// QUESTIONS CONTENT
  Widget _questionsContent() {
    return ListView(padding: const EdgeInsets.all(16));
  }
}
