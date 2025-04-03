import 'package:flutter/material.dart';
import '../widgets/checkbox.dart';
import '../widgets/password.dart';
import '../widgets/mail.dart';
import './home_screen.dart';
import './register_screen.dart';

// Login Screen
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120, // Ajustez la hauteur de la barre d'application
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Alignement à gauche
          children: <Widget>[
            Text(
              'Login to your account',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Lato-Bold',
              ),
            ),
            SizedBox(height: 8), // Espace entre le titre et le logo
            Image.asset(
              'assets/images/accent.png', // Chemin vers votre logo
              width: 100, // Ajustez la largeur du logo
              height: 50, // Ajustez la hauteur du logo
              fit: BoxFit.contain, // Assure que l'image entière est visible
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 40), // Espace entre les boutons
            MailInput(),
            SizedBox(height: 16), // Ajoute un espace entre les widgets
            PasswordInput(title: 'Password'),
            SizedBox(height: 16), // Ajoute un espace entre les widgets
            MyCheckbox(title: 'Remember me', boldPart: ''),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Couleur de fond bleue
                padding: EdgeInsets.symmetric(
                  horizontal: 100,
                  vertical: 16,
                ), // Padding pour la taille
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30), // Bords arrondis
                ),
              ),
              child: Text(
                'Login',
                style: TextStyle(color: Colors.white), // Texte en blanc
              ),
            ),
            SizedBox(height: 16), // Espace entre les boutons
            Text(
              'OR',
              style: TextStyle(fontSize: 16), // Style du texte "OR"
            ),
            SizedBox(height: 16), // Espace entre les éléments
            ElevatedButton(
              onPressed: () {
                // Logique de connexion avec Google
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white, // Couleur de fond blanche
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  side: BorderSide(color: Colors.grey), // Bordure grise
                ),
              ),
              child: Text(
                'Login with Google',
                style: TextStyle(
                  color: Colors.black,
                ), // Style du texte "Login with Google"
              ),
            ),
            Expanded(child: SizedBox()), // Prend tout l'espace disponible
            Padding(
              padding: const EdgeInsets.all(16.0), // Ajoute un padding
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterScreen()),
                  );
                },
                child: Text('Don\'t have an account? Register'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
