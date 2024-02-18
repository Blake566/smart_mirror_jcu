import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  double _emotionValue = 0.5; // Neutral initially
  String _emotionLabel = 'Neutral';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Positioned(
            top: 20,
            left: 20,
            child: Text(
              'How are you feeling in this moment?',
              style: TextStyle(fontSize: 24),
            ),
          ),
          // Removed camera preview placeholder:
          // Positioned(
          //   top: 80,
          //   left: (MediaQuery.of(context).size.width - cameraPreviewSize.width) / 2,
          //   child: // CameraPreview(_cameraController),
          // ),
          Positioned(
            top: 80,
            left: 20,
            child: Slider(
              value: _emotionValue,
              min: 0.0,
              max: 1.0,
              label: _emotionLabel,
              onChanged: (newEmotionValue) => setState(() => _emotionValue = newEmotionValue),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Next'),
            ),
          ),
        ],
      ),
    );
  }
}

// Implement SecondScreen here, similar to FirstScreen layout

// Implement SecondScreen here, similar to FirstScreen layout
