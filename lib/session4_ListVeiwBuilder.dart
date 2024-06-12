//1 lines (list view builder) 
import 'dart:math';
import 'package:flutter/material.dart';

class Session4 extends StatefulWidget {
  const Session4({Key? key}) : super(key: key);

  @override
  State<Session4> createState() => _Session4State();
}

class _Session4State extends State<Session4> {
  final List<String> names = [
    "Urooj Naz",
    "Iffat Shafi",
    "Areej Badar",
    "Sanna Khan",
    "Hina Soomro",
    "Hamna Khan",
    "Tooba Shakoor",
    "Saba Memon",
    "Raheela Shabbir",
    "Sarah Ansari",
    "Kanchan Kumari",
    "Roshani Thakrani",
  ];

  final List<String> imagePaths = [
    "assets/images/6.jpg",
    "assets/images/1.jpg",
    "assets/images/2.jpg",
    "assets/images/4.jpg",
    "assets/images/8.jpg",
    "assets/images/10.jpg",
    "assets/images/12.jpg",
    "assets/images/13.jpg",
    "assets/images/14.jpg",
    "assets/images/2.jpg",
    "assets/images/11.jpg",
    "assets/images/4.jpg",
  ];

  String getRandomLastName() {
    final Random random = Random();
    return names[random.nextInt(names.length)];
  }

  @override
  Widget build(BuildContext context) {
    // Sort the list of names in descending (Z to A) order
    names.sort((a, b) => b.compareTo(a));

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0), // Set the background color here
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: _CustomAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: List.generate(names.length, (index) {
              final String name = names[index];
              final String imagePath = imagePaths[index];
              return Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 16, // Add spacing between each box
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.1 - 12,
                    height: 230, // Increased height to accommodate image
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 71, 71, 71),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 8,
                          right: 8,
                          child: Icon(
                            Icons.mic,
                            color: Colors.white,
                          ),
                        ),
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(imagePath),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                name,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 30, 178, 223),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 30, 178, 223), // Set the background color for the main heading here
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0), // Add vertical padding
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center, // Center the text vertically
            children: [
              Text(
                "List View Builder",
                style: TextStyle(
                  color: Colors.white, // Set the text color for the main heading here
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
