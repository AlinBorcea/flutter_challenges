import 'package:flutter/material.dart';
import 'challenge.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pages'),
      ),
      body: ListView.builder(
          itemCount: challenges.length,
          itemBuilder: (context, i) {
            return Card(
              child: ExpansionTile(
                leading: Icon(Icons.work, color: Colors.green,),
                title: Text(challenges[i].name),
                children: <Widget>[
                  Column(
                    children: _listTileContent(i),
                  ),
                ],
              ),
            );
          }),
    );
  }

  List<Widget> _listTileContent(int i) {
    List<Widget> column = [];

    for (String content in challenges[i].lessons) {
      column.add(new ListTile(
        leading: Icon(
          Icons.laptop,
          color: Colors.red,
        ),
        title: Text(content),
      ));
    }
    return column;
  }

  List<Challenge> challenges = [
    new Challenge(
        'Sign in',
        'It is important to have a nice sign in screen in you app',
        ['Sign in 1', 'Sign in 2']),
    new Challenge('Lists', 'Nice list views', ['List 1', 'List 2']),
  ];
}
