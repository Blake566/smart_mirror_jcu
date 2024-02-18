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
            decoration: BoxDecoration(
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
                SizedBox(height: 90),
                Text(
                  "You are in control",
                  style: TextStyle(fontSize: 32),
                ), // Text size increased to 32
                // Three Buttons
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                    fixedSize: MaterialStateProperty.all<Size>(Size(188, 50)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            14.0), // Set border radius here
                      ),
                    ),
                  ),
                  child: Text(
                    'Log',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ),
                SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignupPage()));
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                    fixedSize: MaterialStateProperty.all<Size>(Size(188, 50)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            14.0), // Set border radius here
                      ),
                    ),
                  ),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ),
                SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegistrationScreen()));
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                    fixedSize: MaterialStateProperty.all<Size>(Size(188, 85)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            14.0), // Set border radius here
                      ),
                    ),
                  ),
                  child: Text(
                    'Biometric Sign Up Show us your best selfie',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Spacer(), // Spacer to push the next buttons to the bottom
                // Transparent Button 1

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => JournalPage()));
                        // Add your transparent button 1 functionality here
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color(0x80FFFFFF)), // Transparent background
                        elevation: MaterialStateProperty.all<double>(
                            0), // No elevation
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.all(0)),
                        fixedSize:
                            MaterialStateProperty.all<Size>(Size(151, 34)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                14.0), // Set border radius here
                          ), // No padding
                        ),
                      ),
                      child: Text('Journal'),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => chatPage()));
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color(0x80FFFFFF)), // Transparent background
                        elevation: MaterialStateProperty.all<double>(
                            0), // No elevation
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.all(0)),
                        fixedSize:
                            MaterialStateProperty.all<Size>(Size(151, 34)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                14.0), // Set border radius here
                          ), // No padding
                        ), // No padding
                      ),
                      child: Text('Chat'),
                    ),
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
