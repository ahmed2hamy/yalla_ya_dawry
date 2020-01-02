import 'package:flutter/material.dart';

import '../componants/items.dart';
import '../constants.dart';

class MediaTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: kTabs.length,
      initialIndex: 2,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Stack(
            alignment: AlignmentDirectional.topCenter,
            children: <Widget>[
              Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/Group5442.png'),
                          fit: BoxFit.fill))),
              Center(child: Image.asset('assets/5TRrpRAGc.png'))
            ],
          ),
          bottom: TabBar(tabs: kTabs),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(),
            Container(),
            ListView(
              children: <Widget>[
                Items(image: AssetImage('assets/img.png')),
                Items(image: AssetImage('assets/img2.png')),
                Items(image: AssetImage('assets/img3.png')),
                Items(image: AssetImage('assets/img.png')),
                Items(image: AssetImage('assets/img2.png')),
                Items(image: AssetImage('assets/img3.png')),
                Items(image: AssetImage('assets/img.png')),
                Items(image: AssetImage('assets/img2.png')),
                Items(image: AssetImage('assets/img3.png')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
