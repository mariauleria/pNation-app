import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/artist.dart';
import 'package:flutter_application_1/views/pages/detail.dart';

class ArtistListPage extends StatelessWidget {
  var _context = null;
  var _data = [
    Artist(
        'Chungha',
        '1.jpeg',
        'Kim Chung-ha (Korean: 김청하; Hanja: 金請夏, born Kim Chan-mi [김찬미]; February 9, 1996), better known mononymously as Chungha (stylized as CHUNG HA), is a South Korean singer, dancer and choreographer.',
        "Hi I'm Chung Ha!"),
    Artist(
        'Jessi',
        '2.jpeg',
        'Jessica Ho (born December 17, 1988), better known by her stage name Jessi, is a Korean-American rapper, singer and songwriter based in South Korea. She was born in New York, raised in New Jersey, and moved to South Korea at the age of 15.',
        "Hi I'm Jessi!"),
    Artist(
        'Bibi',
        '3.jpeg',
        'Kim Hyung-seo (Hangul: 김형서, born September 27, 1998), better known by the stage name Bibi (비비; stylised in all caps), is a South Korean singer-songwriter. In 2017, she signed with Feel Ghood Music after Yoon Mi-rae discovered her self-produced songs on SoundCloud.',
        "Hi I'm Bibi!"),
    Artist(
        'IU',
        '4.jpeg',
        'Lee Ji-eun (Korean: 이지은; born May 16, 1993), known professionally as IU (Korean: 아이유), is a South Korean singer-songwriter and actress.',
        "Hi I'm IU!"),
  ];

  void _onTap(Artist a) {
    Navigator.push(_context, MaterialPageRoute(
      builder: (builder) {
        return DetailPage(a);
      },
    ));
  }

  Widget _buildWidget(Artist a) {
    return Card(
      child: ListTile(
        leading: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: 44,
            minWidth: 44,
            maxHeight: 64,
            maxWidth: 64,
          ),
          child: Image.asset(
            'assets/${a.profilePict}',
            fit: BoxFit.cover,
          ),
        ),
        title: Text(a.name),
        onTap: () => _onTap(a),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    _context = context;
    return ListView(
      children: _data.map((e) => _buildWidget(e)).toList(),
    );
  }
}
