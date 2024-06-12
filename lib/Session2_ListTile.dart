import 'package:flutter/material.dart';

class Session2_ListTile extends StatefulWidget {
  const Session2_ListTile({Key? key}) : super(key: key);

  @override
  State<Session2_ListTile> createState() => _Session2_ListTileState();
}

class _Session2_ListTileState extends State<Session2_ListTile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 0),
          Container(
            color: Colors.blue,
            padding: EdgeInsets.all(16.0),
            child: ListTile(
              title: Center(
                child: Text(
                  "List Title Guide",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              onTap: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.6),
            child: ListTile(
              leading: ClipOval(
                child: Image.network(
                  "https://www.bhs.org.uk/media/asdb1hae/horse-heads-out-of-stable.jpg?rxy=0.0033808154764481684,0.46567449952100376&width=480&height=480&rnd=132995868259170000",
                  fit: BoxFit.cover,
                  width: 50,
                  height: 50,
                ),
              ),
              title: const Text(
                "Horse",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              subtitle: const Text(
                "A Strong Animal",
                style: TextStyle(
                    fontSize: 16, color: Color.fromARGB(200, 0, 0, 0)),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Color.fromARGB(200, 0, 0, 0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 6.6),
            child: ListTile(
              leading: ClipOval(
                child: Image.network(
                  "https://d27p2a3djqwgnt.cloudfront.net/wp-content/uploads/2018/01/09060054/cow-354428_1280.jpg",
                  fit: BoxFit.cover,
                  width: 50,
                  height: 50,
                ),
              ),
              title: const Text(
                "Cow",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              subtitle: const Text(
                "Provider of Milk",
                style: TextStyle(
                    fontSize: 16, color: Color.fromARGB(200, 0, 0, 0)),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Color.fromARGB(200, 0, 0, 0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 6.6), // Adjust padding as needed
            child: ListTile(
              leading: ClipOval(
                child: Image.network(
                  "https://www.awsfzoo.com/media/DSC01156-1024x683.jpg",
                  fit: BoxFit.cover,
                  width: 50,
                  height: 50,
                ),
              ),
              title: const Text(
                "Camel",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              subtitle: const Text(
                "Comes with Hamps",
                style: TextStyle(
                    fontSize: 16, color: Color.fromARGB(200, 0, 0, 0)),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Color.fromARGB(200, 0, 0, 0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 6.6), // Adjust padding as needed
            child: ListTile(
              leading: ClipOval(
                child: Image.network(
                  "https://images.pexels.com/photos/59821/lamb-spring-nature-animal-59821.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                  fit: BoxFit.cover,
                  width: 50,
                  height: 50,
                ),
              ),
              title: const Text(
                "Sheep",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              subtitle: const Text(
                "Provides Wool",
                style: TextStyle(
                    fontSize: 16, color: Color.fromARGB(200, 0, 0, 0)),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Color.fromARGB(200, 0, 0, 0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 6.6), // Adjust padding as needed
            child: ListTile(
              leading: ClipOval(
                child: Image.network(
                  "https://news.okstate.edu/articles/veterinary-medicine/images/goat_right_aligned.jpg",
                  fit: BoxFit.cover,
                  width: 50,
                  height: 50,
                ),
              ),
              title: const Text(
                "Goat",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              subtitle: const Text(
                "Some have Horns",
                style: TextStyle(
                    fontSize: 16, color: Color.fromARGB(200, 0, 0, 0)),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Color.fromARGB(200, 0, 0, 0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 6.6), // Adjust padding as needed
            child: ListTile(
              leading: ClipOval(
                child: Image.network(
                  "https://www.galeria-frankkrueger.com/uzwheuzw/uploads/2017/08/701-r.jpg",
                  fit: BoxFit.cover,
                  width: 50,
                  height: 50,
                ),
              ),
              title: const Text(
                "Zebra",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              subtitle: const Text(
                "Have black & white stripes",
                style: TextStyle(
                    fontSize: 16, color: Color.fromARGB(200, 0, 0, 0)),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Color.fromARGB(200, 0, 0, 0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 6.6), // Adjust padding as needed
            child: ListTile(
              leading: ClipOval(
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkQ09OSsrK99SdJoNaiACGjj3EFyJ0aPXhTsr6hj4T4uxLGzRdSJv9ysWWTKX5hd3m7YA&usqp=CAU",
                  fit: BoxFit.cover,
                  width: 50,
                  height: 50,
                ),
              ),
              title: const Text(
                "Deer",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              subtitle: const Text(
                "Amazing jumping ability",
                style: TextStyle(
                    fontSize: 16, color: Color.fromARGB(200, 0, 0, 0)),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Color.fromARGB(200, 0, 0, 0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 6.6), // Adjust padding as needed
            child: ListTile(
              leading: ClipOval(
                child: Image.network(
                  "https://thumbs.dreamstime.com/b/close-up-giraf-giraffe-6644943.jpg",
                  fit: BoxFit.cover,
                  width: 50,
                  height: 50,
                ),
              ),
              title: const Text(
                "Giraf",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              subtitle: const Text(
                "Long neck & Tallest animal",
                style: TextStyle(
                    fontSize: 16, color: Color.fromARGB(200, 0, 0, 0)),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Color.fromARGB(200, 0, 0, 0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
