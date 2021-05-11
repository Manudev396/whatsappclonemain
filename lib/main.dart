import 'package:flutter/material.dart';
import 'package:whatsappclonefiles/frontend/chatscreen.dart';
import 'frontend/camera.dart';
import 'package:camera/camera.dart';

List<CameraDescription> cameras;

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();

  cameras = await availableCameras();
  runApp(MyApp());
}
// this is weird
class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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

          body: TabBarView(
            children: [
              Camera(cameras: cameras,),
              chatscreen(),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),

            ],
          ),
        ),
      ),
    );
  }
}


