import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
// this is weird
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
            actions: <Widget> [
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Icon(Icons.search),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Icon(Icons.more_vert),
              ),
            ],
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


