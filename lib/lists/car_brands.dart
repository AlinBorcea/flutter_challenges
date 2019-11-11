import 'package:flutter/material.dart';
import 'brand.dart';

class CarBrands extends StatefulWidget {
  @override
  State createState() => new _CarBrandsState();
}

class _CarBrandsState extends State<CarBrands> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: <Widget>[
              Container(
                height: 128,
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

              /// List view
              Container(
                height: _size.height,
                padding: EdgeInsets.only(top: 115),
                child: _brandListView(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _topBar() {
    return
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              debugPrint('Going back iOS style');
            },
          ),
          Text(
            'Brands',
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

  Widget _brandListView(BuildContext context) {
    return ListView.builder(
        itemCount: brands.length,
        itemBuilder: (context, i) {
          return Card(
            elevation: 4.0,
            child: ListTile(
              leading: Image.asset(brands[i].imgPath),
              title: Text(
                brands[i].name,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                brands[i].motto,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black87,
                ),
              ),
            ),
          );
        });
  }

  List<Brand> brands = [
    new Brand('Ford', 'Built For the Road Ahead', 'assets/ford.png'),
    new Brand('Ferrari', '', 'assets/ferrari.png'),
    new Brand('Audi', 'Lead through technology', 'assets/audi.png'),
    new Brand('Volkswagen', 'Das Auto', 'assets/vk.png'),
  ];
}
