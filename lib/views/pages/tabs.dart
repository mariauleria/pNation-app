import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/artist.dart';

class TabPage extends StatelessWidget {
  Artist a;
  TabPage(this.a);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.account_circle_rounded)),
              Tab(icon: Icon(Icons.auto_awesome)),
            ],
          ),
          title: Text(a.name),
          automaticallyImplyLeading: false,
        ),
        body: TabBarView(
          children: [
            Container(
              child: Text(a.about),
              margin: EdgeInsets.all(20),
            ),
            Container(
              child: Text(a.quotes),
              margin: EdgeInsets.all(20),
            ),
          ],
        ),
      ),
    );
  }
}
