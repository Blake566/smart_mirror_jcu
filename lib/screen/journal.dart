import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

enum JournalBar { D, W, M, Y }

Map<JournalBar, String> backgroundImageMap = {
  JournalBar.D: 'images/journal_d.png',
  JournalBar.W: 'images/journal_d.png',
  JournalBar.M: 'images/journal_m.png',
  JournalBar.Y: 'images/journal_y.png',
};

class JournalPage extends StatefulWidget {
  @override
  _JournalPageState createState() => _JournalPageState();
}

class _JournalPageState extends State<JournalPage> {
  JournalBar _selectedSegment = JournalBar.D;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Journal"),
      ),
      body: Stack(children: [
        CupertinoPageScaffold(
          backgroundColor: Colors.transparent, // Make the scaffold transparent
          navigationBar: CupertinoNavigationBar(
            backgroundColor: Colors.white,
            //padding: EdgeInsetsDirectional.symmetric(horizontal: 0.0, vertical: 5.0),
            //border: Border.all(width: 30.0, color: const Color(0xFFFFFFFF)),
            //padding: EdgeInsetsDirectional.all(8.0),
            automaticallyImplyLeading: false,
            // This Cupertino segmented control has the enum "Sky" as the type.
            middle: CupertinoSlidingSegmentedControl<JournalBar>(
              backgroundColor: CupertinoColors.systemGrey2,
              thumbColor: CupertinoColors.white,
              // This represents the currently selected segmented control.
              groupValue: _selectedSegment,
              // Callback that sets the selected segmented control.
              onValueChanged: (JournalBar? value) {
                if (value != null) {
                  setState(() {
                    _selectedSegment = value;
                  });
                }
              },
              children: const <JournalBar, Widget>{
                JournalBar.D: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                  child: Text(
                    'D',
                    style: TextStyle(color: CupertinoColors.black),
                  ),
                ),
                JournalBar.W: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                  child: Text(
                    'W',
                    style: TextStyle(color: CupertinoColors.black),
                  ),
                ),
                JournalBar.M: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'M',
                    style: TextStyle(color: CupertinoColors.black),
                  ),
                ),
                JournalBar.Y: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Y',
                    style: TextStyle(color: CupertinoColors.black),
                  ),
                ),
              },
            ),
          ),
          child: Center(
            child: Image.asset(
              backgroundImageMap[_selectedSegment]!,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ]),
    );
  }
}
