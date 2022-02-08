import 'package:flutter/material.dart';
import 'package:gst_in/widgets/app_bar_components.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 175),
          child: ProfileTopBarContents()),
      body: Column(
          // children: [
          //   // for address
          //   // Container(),
          //   // // row of 3 containers
          //   // Row(),

          //   // // For date of registration
          //   // Container(),
          //   // //for Button
          //   // Container(),
          // ],
          ),
    );
  }
}
