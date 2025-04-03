import 'package:flutter/material.dart';

class MailInput extends StatefulWidget {
  @override
  _MailInputState createState() => _MailInputState();
}

class _MailInputState extends State<MailInput> {

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: 'Email',
        border: OutlineInputBorder( // Ajoute une bordure
          borderRadius: BorderRadius.circular(10.0), // Bords arrondis
          borderSide: BorderSide.none, // Supprime la bordure par défaut
        ),
        filled: true, // Remplit le fond
        fillColor: Colors.grey[200], // Couleur de fond grise claire
      ),
    );
  }
}