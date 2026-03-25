import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PlaylistNec extends StatelessWidget {
  const PlaylistNec({super.key});

  // List of playlists with URLs for each subject
  final List<Map<String, String>> playlists = const [
    {
      'title': 'NEC Licence Exam For Computer Engineering',
      'url':
          'https://www.youtube.com/playlist?list=PLYwrDCC_pg4EAY3NcfJyJvsz6T0FQ5tMo',
    },
  ];

  // Function to launch YouTube playlist URL
  void _launchYouTube(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(
        Uri.parse(url),
        mode:
            LaunchMode.externalApplication, // Opens in YouTube app if installed
      );
    } else {
      debugPrint('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),

      /// APP BAR
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(75),
        child: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
          title: const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              'Playlists',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
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
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: playlists.length,
        itemBuilder: (context, index) {
          return InkWell(
            borderRadius: BorderRadius.circular(8),
            onTap: () => _launchYouTube(playlists[index]['url']!),
            child: Container(
              margin: const EdgeInsets.only(bottom: 12),
              decoration: BoxDecoration(
                color: const Color(0xffF5F5F5),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  /// NUMBER BOX
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

                  /// PLAYLIST TITLE
                  Expanded(
                    child: Text(
                      playlists[index]['title']!,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                      ),
                    ),
                  ),

                  /// OPEN ICON
                  const Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: Icon(Icons.open_in_new, color: Colors.blue),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
