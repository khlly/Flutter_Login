import 'package:flutter/material.dart';

class MyCheckbox extends StatefulWidget {
  final String title;
  final String boldPart; // Partie du texte à mettre en gras et en couleur

  MyCheckbox({required this.title, required this.boldPart});

  @override
  _MyCheckboxState createState() => _MyCheckboxState();
}

class _MyCheckboxState extends State<MyCheckbox> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center, // Alignement en haut
      children: <Widget>[
        Checkbox(
          value: _isChecked,
          onChanged: (bool? newValue) {
            setState(() {
              _isChecked = newValue!;
            });
          },
        ),
        Expanded(
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: widget.title,
              style: TextStyle(color: Colors.grey),
            ),
            TextSpan(
              text: widget.boldPart,
              style: TextStyle(
                color: Colors.blue,
                fontFamily: 'Lato-Bold',
              ),
            ),
          ],
        ),
      ),
     ),
    ],
    );
  }
}