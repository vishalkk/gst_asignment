import 'package:flutter/material.dart';

import 'package:gst_in/model/list_users.dart';
import 'package:gst_in/model/user_model.dart';
import 'package:gst_in/model/model.dart';
// TODO: adding content to field
class ProfileTopBarContents extends StatefulWidget {
  final UserModel users;
  const ProfileTopBarContents({
    Key? key,
    required this.users,
  }) : super(key: key);

  @override
  _ProfileTopBarContentsState createState() => _ProfileTopBarContentsState(users);
}

class _ProfileTopBarContentsState extends State<ProfileTopBarContents> {
   final UserModel users;

  _ProfileTopBarContentsState(this.users);
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size(double.infinity, 175),
      child: AppBar(
        backgroundColor: Colors.green,
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(
            top: 20.0,
            left: 8.0,
            bottom: 8.0,
            right: 8.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: const [
                  // IconButton(
                  //   onPressed: () {
                  //     Navigator.pop(context);
                  //   },
                  //   icon: const Icon(
                  //     Icons.arrow_back,
                  //     color: Colors.white,
                  //   ),
                  // ),
                  Padding(
                    padding: EdgeInsets.only(left: 40, top: 20, bottom: 20),
                    child: Text(
                      'Gst Profile',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 8.0,
                  right: 8.0,
                ),
                child: Text(
                  'GSTIN Of The Tax Payer',
                  style: TextStyle(fontSize: 10, color: Colors.white70),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                  bottom: 8.0,
                  right: 8.0,
                ),
                child: Text(
                  users.id.toString(),
                  style: const TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  users.name,
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    //TODO: CHanging status and its color based on data
                    height: 35,
                    width: 100,
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: const BoxDecoration(
                              color: Colors.green, shape: BoxShape.circle),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          users.status,
                          style: TextStyle(color: Colors.green),
                        ),
                      ],
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
    );
  }
}
