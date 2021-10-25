import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/pages/ArtistList.dart';

class HomePage extends StatelessWidget {
  var _img = [
    'assets/1.jpeg',
    'assets/2.jpeg',
    'assets/3.jpeg',
    'assets/4.jpeg',
  ];

  Image _buildImage(String a) {
    return Image(image: AssetImage(a));
  }

  void _logout(BuildContext context) {
    Navigator.pushNamed(context, '/');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('P Nation Ent.'),
      ),
      body: Column(
        children: [
          CarouselSlider(
            items: _img.map((e) => _buildImage(e)).toList(),
            options: CarouselOptions(
              initialPage: 0,
              enableInfiniteScroll: true,
              enlargeCenterPage: true,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
            ),
          ),
          Expanded(
            child: ArtistListPage(),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: TextButton(
                onPressed: () => _logout(context),
                child: Text('LOG OUT'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
