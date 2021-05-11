import 'package:flutter/material.dart';

void main() {
  runApp(chatscreen());
}

class chatscreen extends StatelessWidget {
  const chatscreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:  <Widget> [
          SizedBox(height: 5),
      Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.account_circle,
            size: 50,
          ),
          SizedBox(width: 5),
          Text("Karthikeyan",
          style: TextStyle(
          fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          ),
        ],
      ),
          ),
          const Divider(
            height: 20,
            thickness: 2,
           // indent: 20,
            //endIndent: 20,
          ),
          Column(
            children:  <Widget> [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                  Icon(
                  Icons.account_circle,
                  size: 50,
                ),
                    SizedBox(width: 5),
                    Text("Manu dev",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
      ],
    ),
    ),
              const Divider(
                height: 20,
                thickness: 2,
                // indent: 20,
                //endIndent: 20,
              ),
      ],
      ),
    ],
      ),

    );
  }
}
