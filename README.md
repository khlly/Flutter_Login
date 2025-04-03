# Login and Registration UI in Flutter

This project demonstrates a simple login and registration UI implemented in Flutter. The app consists of three main pages: Login, Registration, and Home.

## Getting Started

### Prerequisites
- Flutter SDK
- Android Studio or VS Code
- A device or emulator to run the app

### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/khlly/Flutter_Login.git
   ```
2. Navigate to the project directory:
   ```bash
   cd flutter_loginapp
   ```
3. Get the dependencies:
   ```bash
   flutter pub get
   ```
4. Run the app:
   ```bash
   flutter run
   ```

## Pages

### Login Page
- The login page includes the following elements:
  - Email input field
  - Password input field with visibility toggle
  - 'Remember me' checkbox
  - 'Login' button
  - 'Login with Google' button (currently not functional)
  - Link to the registration page

### Registration Page
- The registration page includes the following elements:
  - Email input field
  - Password input field with visibility toggle
  - Password confirmation field
  - Terms & Conditions checkbox
  - 'Register' button
  - Link to the login page

### Home Page
- The home page displays a welcome message and a 'Log Out' button to return to the login page.

## Navigation
- Clicking on 'Register' on the login page navigates to the registration page.
- Clicking on 'Login' on the registration page navigates back to the login page.
- Successfully logging in navigates to the home page.

## Improvements
- Validate email and password fields to ensure correct formatting.
- Ensure the 'Log In' button is disabled if fields are not correctly filled.
- Implement actual Google authentication for the 'Login with Google' button.
- Store 'Remember me' preference using local storage or shared preferences.

## Contributing
Feel free to open an issue or submit a pull request if you have any improvements or bug fixes to propose!

## License
This project is licensed under the MIT License - see the LICENSE file for details.

