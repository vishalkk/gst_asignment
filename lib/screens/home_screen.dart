import 'package:flutter/material.dart';
import 'package:gst_in/bloc/search_bloc.dart';
import 'package:gst_in/screens/profile_screen.dart';

import 'package:gst_in/widgets/search_bar_contents.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _searchController = TextEditingController();
  bool isShowUser = false;

  @override
  void initState() {
    super.initState();
    searchBloc.search("");
  }

  @override
  void dispose() {
    super.dispose();
    _searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 175),
        child: SearchBarContents(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'Enter GST number',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: new BorderRadius.circular(10.0)),
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
                  child: TextFormField(
                    // obscureText: true,
                    controller: _searchController,
                    onChanged: (changed) {
                      searchBloc.search(_searchController.text);
                    },
                    decoration: const InputDecoration(
                      hintText: 'Ex. 07AACCM9910C1ZP',
                      border: InputBorder.none,
                      fillColor: Colors.green,
                    ),
                    // onFieldSubmitted: (String _) {
                    //   // setState(() {
                    //   //   isShowUser = true;
                    //   // });
                    //   // print(_);
                    // },
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 350.0,
              height: 50.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfileScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(primary: Colors.green),
                child: const Text(
                  'Search',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
