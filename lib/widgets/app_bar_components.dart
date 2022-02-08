import 'package:flutter/material.dart';

class ProfileTopBarContents extends StatefulWidget {
  const ProfileTopBarContents({Key? key}) : super(key: key);

  @override
  _ProfileTopBarContentsState createState() => _ProfileTopBarContentsState();
}

class _ProfileTopBarContentsState extends State<ProfileTopBarContents> {
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
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
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
              const Padding(
                padding: EdgeInsets.only(
                  left: 8.0,
                  bottom: 8.0,
                  right: 8.0,
                ),
                child: Text(
                  '1111',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Masters India Private Limited',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
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
                        const Text(
                          'status',
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
