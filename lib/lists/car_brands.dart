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
          color: Colors.black,
          child: Stack(
            children: <Widget>[
              /// top bar
              Container(
                height: 128,
                width: _size.width,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(28),
                    bottomLeft: Radius.circular(28),
                  ),
                ),
                child: _topBar(context),
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

  Widget _topBar(BuildContext context) {
    return
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).pop();
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
            color: Color.fromARGB(255, 66, 66, 66), // rgba(66,66,66 ,1)
            elevation: 4.0,
            child: ListTile(
              leading: Image.asset(brands[i].imgPath),
              title: Text(
                brands[i].name,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                brands[i].motto,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
          );
        });
  }

  List<Brand> brands = [
    Brand('Ford', 'Built For the Road Ahead', 'assets/ford.png'),
    Brand('Ferrari', '', 'assets/ferrari.png'),
    Brand('Audi', 'Lead through technology', 'assets/audi.png'),
    Brand('Volkswagen', 'Das Auto', 'assets/vk.png'),
    Brand('BMW', 'The Ultimate Driving Machine', 'assets/bmw.png')
  ];
}
