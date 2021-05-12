import 'package:flutter/material.dart';

void main() {
  runApp(chat1());
}

class chat1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
       children: [
         Container(
           color: Color(0xFF0A6752),
           height: 100,
            width: 500,
            child: Row(
              children: [
                SizedBox(width: 10),
                CircleAvatar(
                  radius: 25,
                ),
                SizedBox(width: 20),
                Text("Karthikeyan",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
                ),
                SizedBox(width: 170),
                Icon(Icons.more_vert,color: Colors.white),
              ],
            ),
         ),
        Image(image:NetworkImage("https://user-images.githubusercontent.com/15075759/28719144-86dc0f70-73b1-11e7-911d-60d70fcded21.png"),),
       ],
     ),
    );

  }
}



// backgroundColor: Color(0xFF0A6752),
