import 'package:flutter/material.dart';
import 'package:challenges/lists/car_brands.dart';
import 'package:challenges/profiles/profile1.dart';
import 'challenge.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: <Widget>[
              Container(
                height: 100,
                width: _size.width,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(28),
                    bottomLeft: Radius.circular(28),
                  ),
                ),
                child: _topBar(),
              ),
              Container(
                height: _size.height,
                padding: EdgeInsets.only(top: 80),
                child: _homeList(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _topBar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              debugPrint('pressed on menu');
            },
          ),
          Text(
            'Challenges',
            textScaleFactor: 1.75,
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              debugPrint('more options');
            },
          ),
        ],
      ),
    );
  }

  Widget _homeList(BuildContext context) {
    return ListView.builder(
        itemCount: challenges.length,
        itemBuilder: (context, i) {
          return Card(
            child: ExpansionTile(
              leading: Icon(
                Icons.work,
                color: Colors.green,
              ),
              title: Text(challenges[i].name),
              children: <Widget>[
                Column(
                  children: _listTileContent(context, i),
                ),
              ],
            ),
          );
        });
  }

  List<Widget> _listTileContent(BuildContext context, int i) {
    List<Widget> column = [];

    for (String content in challenges[i].lessons) {
      column.add(new ListTile(
        leading: Icon(
          Icons.laptop,
          color: Colors.red,
        ),
        title: Text(content),
        onTap: () {
          Navigator.of(context).push(
              new MaterialPageRoute(builder: (context) => _lesson(content)));
        },
      ));
    }
    return column;
  }

  Object _lesson(String content) {
    switch (content) {
      case 'List 1':
        return CarBrands();
      case 'Profile 1':
        return Profile1();
      default:
        return CarBrands();
    }
  }

  List<Challenge> challenges = [
    Challenge(
        'Sign in',
        'It is important to have a nice sign in screen in you app',
        ['Sign in 1', 'Sign in 2']),
    Challenge('Lists', 'Nice list views', ['List 1', 'List 2']),
    Challenge('Profiles', 'Beautiful', ['Profile 1']),
  ];
}
