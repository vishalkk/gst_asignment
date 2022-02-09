import 'package:flutter/material.dart';
import 'package:gst_in/widgets/toggle_button.dart';

class SearchBarContents extends StatefulWidget {
  const SearchBarContents({Key? key}) : super(key: key);

  @override
  _SearchBarContentsState createState() => _SearchBarContentsState();
}

class _SearchBarContentsState extends State<SearchBarContents> {
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size(double.infinity, 175),
      child: AppBar(
        actions: <Widget>[IconButton(onPressed: (){}, icon:const Icon(Icons.more_vert))],
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
            children: const <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  top: 40,
                  left: 8.0,
                  right: 8.0,
                ),
                child: Text(
                  'Select the type for',
                  style: TextStyle(fontSize: 15, color: Colors.white70),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 8.0,
                  left: 8.0,
                  right: 8.0,
                  bottom: 20.0,
                ),
                child: Text(
                  'GST Number Search Tool',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),
                ),
              ),
              Center(child: ToggleButton()),
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
