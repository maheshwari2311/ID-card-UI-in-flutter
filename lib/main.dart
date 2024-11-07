import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "demo app",
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        centerTitle: true,
        title: const Text(
          "Id card",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/boy.webp"),
                radius: 70.0,
              ),
            ),
            const Divider(
              height: 70.0,
              color: Colors.grey,
            ),
            const Text(
              "NAME",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.grey,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "Kunal Maheshwari",
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            const Text(
              "Ninja level",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.grey,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "$counter",
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.amberAccent,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            const Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "kunal.maheshwari2311@gmail.com",
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.amberAccent,
                    letterSpacing: 1.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              "Phone Number",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.grey,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "95889565555",
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey,
        onPressed: () {
          setState(() {
            counter += 1;
          });
        },
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}
