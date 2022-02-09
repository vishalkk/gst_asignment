import 'package:flutter/material.dart';

import 'package:gst_in/widgets/search_bar_contents.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 223, 223, 223),
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 175),
        child: SearchBarContents(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          //TextInput Field
          //SearchButton
          children: [
            const Spacer(
              flex: 1,
            ),
            SizedBox(
                width: 350.0,
                height: 50.0,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(primary: Colors.green),
                    child: const Text(
                      'Search',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )))
          ],
        ),
      ),
    );
  }
}
