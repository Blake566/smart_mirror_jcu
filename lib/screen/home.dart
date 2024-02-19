import 'package:flutter/material.dart';
import 'package:smart_mirror_jcu/screen/signup_page.dart';
//import 'face_register.dart';
import 'RegistrationScreen.dart';
import 'journal.dart';
import 'chat.dart';
import 'log_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomePageState();
}

class _HomePageState extends State<HomeScreen> {
//class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/Profile_image.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 90),
                const Text(
                  "You are in control",
                  style: TextStyle(fontSize: 32),
                ), // Text size increased to 32
                // Three Buttons
                const SizedBox(height: 30),
                // Lon in button
                ButtonToPage('Log in', LoginPage(), 50),
                const SizedBox(height: 8),
                // Sign up button
                ButtonToPage('Sign up', SignupPage(), 50),
                const SizedBox(height: 8),
                // Biometric sign up button
                const ButtonToPage(
                  'Biometric sign up show us your best selfie',
                  RegistrationScreen(),
                  84,
                ),
                const Spacer(), // Spacer to push the next buttons to the bottom

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ReusableButton(Colors.white, const Color(0x33FFFFFF),
                        const Icon(Icons.menu_book), 'Journal', JournalPage()),
                    const SizedBox(
                      width: 50,
                    ),
                    const ReusableButton(Colors.white, Color(0x33FFFFFF),
                        Icon(Icons.chat_bubble), 'Chat', chatPage()),
                  ],
                ),
                // Transparent Button 2
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonToPage extends StatefulWidget {
  const ButtonToPage(this.buttonText, this.toPage, this.buttonHeight,
      {super.key});
  final String buttonText;
  final Widget toPage;
  final double buttonHeight;

  @override
  State<ButtonToPage> createState() => _ButtonToPageState();
}

class _ButtonToPageState extends State<ButtonToPage> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => widget.toPage));
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
        fixedSize:
            MaterialStateProperty.all<Size>(Size(188, widget.buttonHeight)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.0), // Set border radius here
          ),
        ),
      ),
      child: Text(
        widget.buttonText,
        style: const TextStyle(color: Colors.white, fontSize: 17),
      ),
    );
  }
}

class ReusableButton extends StatefulWidget {
  const ReusableButton(this.foreColor, this.backColor, this.buttonIcon,
      this.buttonText, this.newPage,
      {super.key});
  final Color foreColor;
  final Color backColor;
  final Icon buttonIcon;
  final String buttonText;
  final Widget newPage;

  @override
  State<ReusableButton> createState() => _ReusableButtonState();
}

class _ReusableButtonState extends State<ReusableButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => widget.newPage));
          // Add your transparent button 1 functionality here
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
              widget.backColor), // Transparent background
          elevation: MaterialStateProperty.all<double>(0), // No elevation
          padding:
              MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.all(0)),
          fixedSize: MaterialStateProperty.all<Size>(const Size(151, 34)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(14.0), // Set border radius here
            ), // No padding
          ),
          foregroundColor: MaterialStateProperty.all<Color>(
            widget.foreColor, // Set text and icon color to white
          ),
        ),
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          widget.buttonIcon,
          const SizedBox(
            width: 6,
          ),
          Text(
            widget.buttonText,
          ),
        ]));
  }
}
