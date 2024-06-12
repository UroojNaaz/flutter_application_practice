import 'package:flutter/material.dart';

class Session3_DynamicList_Map extends StatefulWidget {
  const Session3_DynamicList_Map({Key? key}) : super(key: key);

  @override
  State<Session3_DynamicList_Map> createState() => _Session3_DynamicList_MapState();
}

class _Session3_DynamicList_MapState extends State<Session3_DynamicList_Map> {
  final List<Map<String, dynamic>> dynamicData = [
    {
      "name": "Urooj",
      "image": "assets/images/1.jpg",
      "des": "Web & App Developer"
    },
    {
      "name": "Areej",
      "image": "assets/images/2.jpg",
      "des": "Web Developer"
    },
    {
      "name": "Henry",
      "image": "assets/images/3.jpg",
      "des": "Software Developer"
    },
    {
      "name": "Hamna",
      "image": "assets/images/4.jpg",
      "des": "Flutter Developer"
    },
    {
      "name": "Charlie",
      "image": "assets/images/5.jpg",
      "des": "Graphic Designer"
    },
    {
      "name": "Amelia",
      "image": "assets/images/6.jpg",
      "des": "Front-end Developer"
    },
    {
      "name": "William",
      "image": "assets/images/7.jpg",
      "des": "Data Analyst"
    },
    {
      "name": "Fariha",
      "image": "assets/images/8.jpg",
      "des": "Graphic Designer"
    },
    {
      "name": "Shakir khan",
      "image": "assets/images/9.jpg",
      "des": "Flutter Developer And Trainer"
    },
    {
      "name": "Kulsoom",
      "image": "assets/images/10.jpg",
      "des": "QA Engineer"
    },
    {
      "name": "Jenny",
      "image": "assets/images/11.jpg",
      "des": "AI Engineer"
    },
    {
      "name": "Lily",
      "image": "assets/images/12.jpg",
      "des": "Data Scientist"
    },
    {
      "name": "Olivia",
      "image": "assets/images/13.jpg",
      "des": "Back-end Developer"
    },
    {
      "name": "Alice",
      "image": "assets/images/14.jpg",
      "des": "Flutter Developer"
    }             
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dynamic List View',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: const Color.fromARGB(255, 0, 0, 0), // Set text color to white
          ),
        ),
        backgroundColor: Color.fromARGB(255, 253, 153, 38), // Set app bar background color to blue
      ),
      backgroundColor: Color.fromARGB(255, 0, 0, 0), // Set scaffold background color to grey
      body: ListView.builder(
        itemCount: dynamicData.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(dynamicData[index]['image']),
            ),
            title: Text(
              dynamicData[index]['name'],
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.bold, // Set name text to bold
              ),
            ),
            subtitle: Text(
              dynamicData[index]['des'],
              style: TextStyle(
                color: Color.fromARGB(207, 255, 255, 255), // Set description text color to grey
              ),
            ),
          );
        },
      ),
    );
  }
}