import 'package:flutter/material.dart';

import '../constants.dart';

class MenuTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: UpperColumn(),
                  ),
                ),
                Positioned(bottom: 0, left: 0, child: LowerColumn()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UpperColumn extends StatelessWidget {
  const UpperColumn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(height: 20),
        Image.asset('assets/5TRrpRAGc.png', scale: .8),
        SizedBox(height: 20),
        FlatButton(
          onPressed: () {},
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Text("دليل النوادي",
              style: kButtonText, textDirection: TextDirection.rtl),
        ),
        FlatButton(
          onPressed: () {},
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Text("دليل الملاعب",
              style: kButtonText, textDirection: TextDirection.rtl),
        ),
        FlatButton(
          onPressed: () {},
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Text("من نحن",
              style: kButtonText, textDirection: TextDirection.rtl),
        ),
        FlatButton(
          onPressed: () {},
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Text("الأنظمة واللوائح",
              style: kButtonText, textDirection: TextDirection.rtl),
        ),
        FlatButton(
          onPressed: () {},
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Text("اللجان",
              style: kButtonText, textDirection: TextDirection.rtl),
        ),
        FlatButton(
          onPressed: () {},
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Text("اتصل بنا",
              style: kButtonText, textDirection: TextDirection.rtl),
        ),
        FlatButton(
          onPressed: () {},
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Text("شارك التطبيق",
              style: kButtonText, textDirection: TextDirection.rtl),
        ),
        FlatButton(
          onPressed: () {},
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Text("الإشتراك بالنشرة الإخبارية",
              style: kButtonText, textDirection: TextDirection.rtl),
        ),
      ],
    );
  }
}

class LowerColumn extends StatelessWidget {
  const LowerColumn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        IconButton(
            icon: ImageIcon(AssetImage('assets/Icon.png'), color: Colors.white),
            onPressed: () {}),
        IconButton(
            icon:
                ImageIcon(AssetImage('assets/Icon2.png'), color: Colors.white),
            onPressed: () {}),
        IconButton(
            icon:
                ImageIcon(AssetImage('assets/Icon3.png'), color: Colors.white),
            onPressed: () {}),
        IconButton(
            icon:
                ImageIcon(AssetImage('assets/Icon5.png'), color: Colors.white),
            onPressed: () {}),
        IconButton(
            icon:
                ImageIcon(AssetImage('assets/Icon6.png'), color: Colors.white),
            onPressed: () {}),
      ],
    );
  }
}
