import 'package:flutter/material.dart';

class CoursesPage extends StatefulWidget {
  const CoursesPage({super.key});

  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  final List<Map<String, String>> courses = [
    {
      "title": "C Programming",
      "chapters": "Chapters: 10",
      "image": "assets/cprogramming.png",
    },
    {
      "title": "Information System",
      "chapters": "Chapters: 8",
      "image": "assets/information_system.png",
    },
    {
      "title": "E-Governance",
      "chapters": "Chapters: 6",
      "image": "assets/egovernance.png",
    },
    {
      "title": "Big Data Technologies",
      "chapters": "Chapters: 6",
      "image": "assets/big_data.png",
    },
    {
      "title": "Python Programming",
      "chapters": "Chapters: 10",
      "image": "assets/python.png",
    },
    {
      "title": "Computer Network and Security",
      "chapters": "Chapters: 10",
      "image": "assets/network.png",
    },
    {
      "title": "Database Management System",
      "chapters": "Chapters: 9",
      "image": "assets/database.png",
    },
    {
      "title": "Data Structure and Algorithm",
      "chapters": "Chapters: 10",
      "image": "assets/datastructure.png",
    },
    {
      "title": "Internet and Intranet",
      "chapters": "Chapters: 19",
      "image": "assets/internet.png",
    },
    {
      "title": "Object Oriented Analysis and Design",
      "chapters": "Chapters: 4",
      "image": "assets/oop.png",
    },
    {
      "title": "Tensorflow",
      "chapters": "Chapters: 9",
      "image": "assets/tensorflow.png",
    },
    {
      "title": "Distributed System",
      "chapters": "Chapters: 10",
      "image": "assets/distributedsystem.png",
    },
    {
      "title": "Web Technology",
      "chapters": "Chapters: 9",
      "image": "assets/webtechnology.png",
    },
    {
      "title": "Information Security and Audit",
      "chapters": "Chapters: 9",
      "image": "assets/information_security.png",
    },
    {
      "title": "OOP(Object Oriented Programming)",
      "chapters": "Chapters: 10",
      "image": "assets/oop.png",
    },
    {
      "title": "Network Security and Analysis",
      "chapters": "Chapters: 8",
      "image": "assets/network.png",
    },
    {
      "title": "Web Application Programming",
      "chapters": "Chapters: 8",
      "image": "assets/webapplication.png",
    },
  ];

  List<Map<String, String>> filteredCourses = [];

  @override
  void initState() {
    super.initState();
    filteredCourses = courses;
  }

  void searchCourse(String query) {
    final results = courses.where((course) {
      final title = course["title"]!.toLowerCase();
      final input = query.toLowerCase();
      return title.contains(input);
    }).toList();

    setState(() {
      filteredCourses = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),

      appBar: AppBar(
        backgroundColor: const Color(0xff0F5C6E),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text("Courses"),
        centerTitle: true,
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Welcome Text
              const Text(
                "Welcome back 👋",
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              const SizedBox(height: 4),
              const Text(
                "Let's Learn Today",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),

              // Search Bar
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  onChanged: searchCourse,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.search),
                    hintText: "Search Courses...",
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Recently Visited
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xff2492ba), Color(0xff15566d)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Recently visited",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "C-Programming",
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                        ),
                        child: const Text("Continue →"),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Courses Header
              const Text(
                "Courses",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),

              // Courses Grid
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: filteredCourses.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 0.78,
                ),
                itemBuilder: (context, index) {
                  final course = filteredCourses[index];
                  return _courseCard(
                    image: course["image"]!,
                    title: course["title"]!,
                    chapters: course["chapters"]!,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _courseCard({
    required String image,
    required String title,
    required String chapters,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Image.asset(image, fit: BoxFit.contain),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Color(0xff0F5C6E),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  chapters,
                  style: const TextStyle(color: Colors.white70, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
