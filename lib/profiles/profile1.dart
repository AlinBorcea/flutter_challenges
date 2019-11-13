import 'package:flutter/material.dart';

class Profile1 extends StatefulWidget {
  @override
  State createState() => _Profile1State();
}

class _Profile1State extends State<Profile1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 13, 71, 161), // rgba(13,71,161 ,1)
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          'View profile',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: <Widget>[
          /// colored top part
          Container(
            height: 200,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 2, 136, 209),
                  Color.fromARGB(255, 0, 172, 193)
                ], // rgba(0,172,193 ,1)
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    /// call
                    CircleAvatar(
                      child: Icon(
                        Icons.call,
                        size: 32,
                      ),
                      minRadius: 30,
                    ),

                    /// middle
                    CircleAvatar(
                      minRadius: 60,
                      backgroundColor: Color.fromARGB(255, 38, 198, 218),
                      // rgba(38,198,218 ,1)
                      child: CircleAvatar(
                        minRadius: 50,
                        child: Icon(Icons.headset, size: 64),
                      ),
                    ),

                    /// message
                    CircleAvatar(
                      child: Icon(Icons.message),
                      minRadius: 30,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Headset',
                  style: TextStyle(color: Colors.white),
                ),
                Text('London, UK', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    Text(
                      '1 million',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      'subscribers',
                      style:
                          TextStyle(fontSize: 16, color: Colors.red.shade500),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider(),
          ListTile(
            title:
                Text('YouTube', style: TextStyle(color: Colors.red.shade400)),
            subtitle: Text('https://youtube.com/headset/'),
          ),
          Divider(),
          ListTile(
            title: Text('Facebook', style: TextStyle(color: Colors.blue)),
            subtitle: Text('facebook/Headset'),
          ),
        ],
      ),
    );
  }
}
