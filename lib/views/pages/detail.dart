import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/artist.dart';
import 'package:flutter_application_1/views/pages/tabs.dart';

class DetailPage extends StatelessWidget {
  Artist a;

  DetailPage(this.a);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('P Nation Ent.'),
      ),
      body: Column(
        children: [
          Image(image: AssetImage('assets/${a.profilePict}')),
          Expanded(child: TabPage(a)),
        ],
      ),
    );
  }
}
