import 'package:flutter/material.dart';

class CsitPage extends StatelessWidget {
  const CsitPage({super.key});

  final List<String> subjects = const [
    "Computer Network",
    "C Programming",
    "Discrete Structure",
    "Operating System",
    "Database Management System",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),

      /// APP BAR
      /// 🔵 APP BAR
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(75), // increased height
        child: AppBar(
          elevation: 0,
          leading: const Icon(Icons.arrow_back, color: Colors.white),

          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20), // optional spacing from top
              Text(
                "Bsc CSIT",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat-Extrabold',
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 4),
              Text(
                "All Subjects",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'Montserrat-Regular',
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ],
          ),

          /// Gradient background
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

      /// 🧾 BODY
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: subjects.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            decoration: BoxDecoration(
              color: const Color(0xffF5F5F5), // card color (not pure white)
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                /// 🔢 NUMBER BOX
                Container(
                  width: 50,
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xff2492ba),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    "${index + 1}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(width: 16),

                /// 📘 SUBJECT NAME
                Expanded(
                  child: Text(
                    subjects[index],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
