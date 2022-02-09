import 'package:flutter/material.dart';

class ToggleButton extends StatefulWidget {
  const ToggleButton({Key? key}) : super(key: key);

  @override
  _ToggleButtonState createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  List<bool> isSelected = [false, false];

  @override
  void initState() {
    isSelected = [true, false];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 52, 128, 56),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ToggleButtons(
            renderBorder: false,
            fillColor: Colors.white,
            borderRadius: BorderRadius.circular(50),
            selectedColor: Colors.green,
            disabledColor: Colors.redAccent,
            children: const <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Search GST Number',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'GST Return Status',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
            onPressed: (int index) {
              setState(() {
                for (int i = 0; i < isSelected.length; i++) {
                  isSelected[i] = i == index;
                }
              });
            },
            isSelected: isSelected,
          ),
        ],
      ),
    );
  }
}
