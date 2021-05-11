import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF0A6752),
            bottom: TabBar(
              tabs: [
                Icon(Icons.camera_alt),
                Text('Chats'),
                Text('Status'),   //to see other status
                Text('calls')
              ],
            ),
            title: Text('WhatsApp'),
          ),
        ),
      ),
    );
  }
}


