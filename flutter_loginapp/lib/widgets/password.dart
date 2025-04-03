import 'package:flutter/material.dart';

class PasswordInput extends StatefulWidget {
  final String title;

  PasswordInput({required this.title});

  @override
  _PasswordInputState createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder( // Ajoute une bordure
          borderRadius: BorderRadius.circular(10.0), // Bords arrondis
          borderSide: BorderSide.none, // Supprime la bordure par défaut
        ),
        filled: true, // Remplit le fond
        labelText: widget.title,
        fillColor: Colors.grey[200], // Couleur de fond grise claire
        suffixIcon: IconButton(
          icon: Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        ),
      ),
      obscureText: _obscureText,
    );
  }
}

