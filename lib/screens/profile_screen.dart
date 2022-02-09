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
      backgroundColor: Color.fromARGB(255, 223, 223, 223),
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 175),
        child: ProfileTopBarContents(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            //   // for address
            Container(
              height: 150,
              decoration: const BoxDecoration(color: Colors.white70),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 10),
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: const RadialGradient(
                                colors: [
                                  Colors.white,
                                  Color.fromARGB(255, 157, 247, 160)
                                ],
                                radius: 0.75,
                              ),
                            ),
                            child: const Icon(
                              Icons.place,
                              color: Colors.green,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 10.0),
                          child: Text(
                            'Principle Place of Business',
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w800,
                                color: Colors.grey),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Container(
                            height: 50,
                            width: 2,
                            color: const Color.fromARGB(255, 157, 247, 160),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                          width: 300,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20.0, right: 8.0),
                            child: Text(
                              'K-37, floor-,, Mandoli industrial Area, Nort East, Delhi, Delhi, 110093',
                              maxLines: 5,
                              softWrap: true,
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            bottom: 5,
                          ),
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: const RadialGradient(
                                colors: [
                                  Colors.white,
                                  Color.fromARGB(255, 177, 247, 180)
                                ],
                                radius: 0.80,
                              ),
                            ),
                            child: const Icon(
                              Icons.home_work_outlined,
                              color: Colors.green,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(
                            'Additional Place of Business',
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w800,
                                color: Colors.grey),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0, right: 10.0),
                    child: Row(
                      children: const [
                        Text(
                          'Floor',
                          maxLines: 5,
                          softWrap: true,
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 70,
                    width: 100,
                    color: Colors.white,
                    child: Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'State Junction',
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w800,
                                color: Colors.grey),
                          ),
                        ),
                        Text(
                          'Ward 74',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 100,
                    color: Colors.white,
                    child: Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Centre Junction',
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w800,
                                color: Colors.grey),
                          ),
                        ),
                        Text(
                          'Range-139',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 100,
                    color: Colors.white,
                    child: Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Taxpayer Type',
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w800,
                                color: Colors.grey),
                          ),
                        ),
                        Text(
                          'Regular',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: 60,
              width: 342,
              decoration: const BoxDecoration(color: Colors.white70),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 8.0, left: 8.0),
                    height: 30,
                    child: const Text(
                      'Constitution of Business',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 11,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Private Limited Company',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              height: 60,
              width: 342,
              decoration: const BoxDecoration(color: Colors.white70),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 8.0, left: 20.0),
                    height: 30,
                    child: Row(
                      children: const [
                        Text(
                          'Data of Registration',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 11,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'Date of Cancelation',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 11,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      '16/05/2011',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 50,
                color: Colors.green,
                child: const Center(
                  child: Text(
                    'Get Return Filling Status',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
