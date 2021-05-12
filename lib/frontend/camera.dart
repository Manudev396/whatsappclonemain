import 'package:flutter/material.dart';
import 'package:camera/camera.dart';



class Camera extends StatefulWidget {
  Camera({this.cameras});
  final List<CameraDescription> cameras;

  @override
  _CameraState createState() => _CameraState(cameras: cameras);
}

class _CameraState extends State<Camera> {
  _CameraState({this.cameras});
  final List<CameraDescription> cameras;
  CameraController controller;



  void toggleCamera(int index){
    //if index is 0 back cam and 1 is front cam
    controller = CameraController(cameras[index], ResolutionPreset.max);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  //this function returns the bottom buttons in the camera
  Widget bottomIcon({Icon icon,double size,Function onpress}){
    return IconButton(
      icon: icon,
      iconSize: size,
      color: Colors.white,
      onPressed: onpress,
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = CameraController(cameras[0], ResolutionPreset.max);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  int oldIndex=0;
  Icon iconForcam=Icon(Icons.camera_rear);

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return Container();
    }
    return MaterialApp(
      home: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Stack(
          fit: StackFit.expand,
          children: [
             CameraPreview(controller),
            Positioned(
              bottom: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 20.0,),
                  bottomIcon(icon: Icon(Icons.flash_on_rounded),size: 50.0),
                  SizedBox(width: 20.0,),
                  bottomIcon(icon: Icon(Icons.fiber_manual_record_outlined),size: 100.0),
                  SizedBox(width: 30.0,),
                  bottomIcon(icon: iconForcam,size: 50.0,onpress: (){
                    setState(() {
                      if(oldIndex == 0){
                        iconForcam = Icon(Icons.camera_rear);
                        oldIndex = 1;
                      }else if(oldIndex == 1){
                        print('rearcam');
                        iconForcam = Icon(Icons.camera_front);
                        oldIndex = 0;
                      }
                    });
                    toggleCamera(oldIndex);
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  }
