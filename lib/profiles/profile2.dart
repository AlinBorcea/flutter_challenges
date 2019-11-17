import 'package:flutter/material.dart';

class Profile2 extends StatefulWidget {
  @override
  State createState() => _Profile2State();
}

class _Profile2State extends State<Profile2> {
  List<Photo> photos = [
    Photo(Icons.fastfood, 'Food'),
    Photo(Icons.photo, 'Photos'),
    Photo(Icons.card_travel, 'Travel'),
  ];


  @override
  Widget build(BuildContext context) {
    Color teal600 = Color.fromARGB(255, 0, 137, 123);
    Color cyan500 = Color.fromARGB(255, 188, 212, 1); // rgba(0,188,212 ,1)
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: 200,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [teal600, cyan500] // rgba(0,137,123 ,1)
                    )),
          ),
          ListView.builder(
            itemCount: 3,
            itemBuilder: _mainItemBuilder,
          ),
        ],
      ),
    );
  }

  Widget _mainItemBuilder(BuildContext context, int i) {
    if (i == 0) return _header(context);
    if (i == 1) return _sectionHeader();
    if (i == 2) return _collectionRow(context);

    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(left: 20, top: 20, bottom: 10),
      child: Text('Most liked photos'),
    );
  }

  Widget _collectionRow(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 200,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: photos.length,
          itemBuilder: (context, i) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              width: 150,
              height: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(

                    child: Icon(photos[i].icon, size: 64,),
                  ),
                  SizedBox(height: 5,),
                  Text(photos[i].cat),
                ],
              ),
            );
          }),
    );
  }

  Widget _sectionHeader() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Collection',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          FlatButton(
            child: Text(
              'Create new',
              style: TextStyle(color: Colors.blue),
            ),
            onPressed: () {
              debugPrint('pressed on create new');
            },
          ),
        ],
      ),
    );
  }

  Widget _header(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      height: 240,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 40, left: 40, right: 40, bottom: 10),
            child: Material(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 50.0,
                  ),
                  Text('A girl?'),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('Designer | Foodie | Something'),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: ListTile(
                            title: Text(
                              '302',
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            subtitle: Text(
                              'Posts',
                              style: TextStyle(fontWeight: FontWeight.normal),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            title: Text(
                              '10.3k',
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            subtitle: Text(
                              'followers',
                              style: TextStyle(fontWeight: FontWeight.normal),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            title: Text(
                              '120',
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            subtitle: Text(
                              'Following',
                              style: TextStyle(fontWeight: FontWeight.normal),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Material(
                elevation: 5.0,
                shape: CircleBorder(),
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.blue,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Photo {
  IconData icon;
  String cat;

  Photo(this.icon, this.cat);

}
