import 'package:flutter/material.dart';

class Session6_BottomScreen extends StatefulWidget {
  const Session6_BottomScreen({Key? key}) : super(key: key);

  @override
  _Session6_BottomScreenState createState() => _Session6_BottomScreenState();
}

class _Session6_BottomScreenState extends State<Session6_BottomScreen> {
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.black, 
      builder: (BuildContext context) {
        var elevatedButton = Container(
          width: double.infinity, 
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purple, Color.fromARGB(255, 255, 51, 0)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.0, 1.0],
              tileMode: TileMode.repeated,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Container(
              alignment: Alignment.center,
              child: const Text(
                'Apply Now',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent, 
              elevation: 0, 
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.symmetric(vertical: 25 ), 
              shadowColor: Colors.transparent,
            ),
          ),
        );

        return SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, 
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Text(
                  'I Want A Professional Model For My Business',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Cairo, Egypt',
                  style: TextStyle(fontSize: 12, color: Color.fromARGB(255, 163, 156, 156)),
                ),
                const SizedBox(height: 6),
                const Text(
                  '30 July 2024',
                  style: TextStyle(fontSize: 12, color: Color.fromARGB(255, 163, 156, 156)),
                ),
                const SizedBox(height: 6),
                const Text(
                  'Paid Shot Or Event',
                  style: TextStyle(fontSize: 12, color: Color.fromARGB(255, 163, 156, 156)),
                ),
                const SizedBox(height: 15),

                _buildRequirementWithBorder(
                  title: 'Requirements',
                  description: 'This Is Casting All Requirements Or Description About Casting',
                ),

                _buildPreferencesWithBorder(
                  title: 'Preferences',
                  content: [
                    const Text(
                      'Gender',
                      style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      'Male',
                      style: TextStyle(fontSize: 12, color: Color.fromARGB(255, 163, 156, 156)),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      'Ethnicity',
                      style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      'White/Caucasic/Latino/Hispanic',
                      style: TextStyle(fontSize: 12, color: Color.fromARGB(255, 163, 156, 156)),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      'Age',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      'From 20 Years',
                      style: TextStyle(fontSize: 12, color: Color.fromARGB(255, 163, 156, 156)),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      'Height',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      'From 172 Cm',
                      style: TextStyle(fontSize: 12, color: Color.fromARGB(255, 163, 156, 156)),
                    ),
                    const SizedBox(height: 6),
                  ],
                ),

                Align(
                  alignment: Alignment.center,
                  child: elevatedButton,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // Build bordered section for requirements
  Widget _buildRequirementWithBorder({required String title, required String description}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20), 
      padding: const EdgeInsets.all(20), 
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(255, 71, 71, 71)), 
        borderRadius: BorderRadius.circular(10), 
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18, color: Colors.white),
          ),
          const SizedBox(height: 10 , width: double.infinity),
          Text(
            description,
            style: const TextStyle(fontSize: 12, color: Color.fromARGB(255, 163, 156, 156)),
          ),
        ],
      ),
    );
  }

  // Build bordered section for preferences
  Widget _buildPreferencesWithBorder({required String title, required List<Widget> content}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20), 
      padding: const EdgeInsets.all(20), 
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(255, 71, 71, 71)), 
        borderRadius: BorderRadius.circular(10), 
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18, color: Colors.white),
          ),
          const SizedBox(height: 10 , width: double.infinity),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: content,
          ),
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme:
            IconThemeData(color: Colors.white), 

        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),

       title: Text(
          'Casting Details',
          style: TextStyle(
              fontSize: 20, color: Color.fromARGB(255, 255, 255, 255)),
        ),

        actions: [
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              // Implement share functionality here
            },
          ),
        ],
        centerTitle: true, // Center the title
      ),

      body: 
      Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/background_img.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Builder(
              builder: (BuildContext context) {
                return GestureDetector(
                  onTap: () {
                    _showBottomSheet(context);
                  },
                  child: Container(
                    width: 220,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                        colors: [Color.fromARGB(255, 226, 60, 19), Colors.purple],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.0, 1.0],
                        tileMode: TileMode.repeated,
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Click Here',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}


