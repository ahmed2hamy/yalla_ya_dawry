import 'package:flutter/material.dart';

import '../componants/images_stack.dart';
import '../constants.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double x = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(104),
        child: AppBar(
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
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView(
          children: <Widget>[
            LatestNewsColumn(x: x),
            SizedBox(height: 12),
            NextMatchesColumn(),
            SizedBox(height: 12),
            LatestTweetsColumn(),
            SizedBox(height: 12),
            WinnerColumn(),
            SizedBox(height: 12),
            VideosColumn(),
            SizedBox(height: 12),
            SponsorsColumn(),
          ],
        ),
      ),
    );
  }
}

class SponsorsColumn extends StatelessWidget {
  const SponsorsColumn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Text("الرعاة", style: kBodyText, textDirection: TextDirection.rtl),
        SizedBox(height: 8),
        Container(
          color: Colors.white,
          padding: EdgeInsets.all(18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset('assets/Symbol.png'),
              Image.asset('assets/Symbol.png'),
            ],
          ),
        ),
      ],
    );
  }
}

class VideosColumn extends StatelessWidget {
  const VideosColumn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Text("الفيديوهات", style: kBodyText, textDirection: TextDirection.rtl),
        SizedBox(height: 8),
        Container(
          color: Colors.white,
          padding: EdgeInsets.all(18),
          child: Image.asset('assets/Image.png'),
        ),
      ],
    );
  }
}

class WinnerColumn extends StatelessWidget {
  const WinnerColumn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Text("توقع من الفائز",
            style: kBodyText, textDirection: TextDirection.rtl),
        SizedBox(height: 8),
        Container(
          color: Colors.white,
          padding: EdgeInsets.all(18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  WinnerCard(),
                  SizedBox(width: 12),
                  WinnerCard(),
                  SizedBox(width: 12),
                  WinnerCard(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text("النهضة",
                          style: kBodyText, textDirection: TextDirection.rtl),
                      Text(
                        "20%",
                        style: kBodyText.copyWith(fontWeight: FontWeight.w100),
                      ),
                    ],
                  ),
                  SizedBox(width: 12),
                  Column(
                    children: <Widget>[
                      Text("الهلال",
                          style: kBodyText, textDirection: TextDirection.rtl),
                      Text(
                        "50%",
                        style: kBodyText.copyWith(fontWeight: FontWeight.w100),
                      ),
                    ],
                  ),
                  SizedBox(width: 12),
                  Column(
                    children: <Widget>[
                      Text("الإتحاد",
                          style: kBodyText, textDirection: TextDirection.rtl),
                      Text(
                        "30%",
                        style: kBodyText.copyWith(fontWeight: FontWeight.w100),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class WinnerCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Image.asset('assets/logo-club-foot-png-2.png', fit: BoxFit.fill),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[300]),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
    );
  }
}

class LatestTweetsColumn extends StatelessWidget {
  const LatestTweetsColumn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("المزيد",
                style: kBodyText.copyWith(color: Colors.blue),
                textDirection: TextDirection.rtl),
            Text("اخر التغريدات",
                style: kBodyText, textDirection: TextDirection.rtl),
          ],
        ),
        SizedBox(height: 8),
        TweetContainer(),
        TweetContainer(),
      ],
    );
  }
}

class TweetContainer extends StatelessWidget {
  const TweetContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text("الدوري الرياضي",
                      style: kBodyText, textDirection: TextDirection.rtl),
                  Text("@account",
                      style: kBodyText.copyWith(fontWeight: FontWeight.w100)),
                ],
              ),
              Image.asset('assets/5TRrpRAGc.png'),
            ],
          ),
          Text(
              "عيش البورجوازية عيش قلق،"
              " تتفجّر فيه الفتن والفورات، تطغى عليه العيون الحاسدة والعوارض الفاسدة،"
              " تتصارع طوائفه ليس صراع الثيران: بل صراع الأرانب والأسود"
              " (وهي بدورها أصناف وطبقات: الغضنفر،",
              style: kBodyText,
              textDirection: TextDirection.rtl,
              maxLines: 3,
              overflow: TextOverflow.ellipsis),
        ],
      ),
    );
  }
}

class NextMatchesColumn extends StatelessWidget {
  const NextMatchesColumn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("المزيد",
                style: kBodyText.copyWith(color: Colors.blue),
                textDirection: TextDirection.rtl),
            Text("المباريات القادمة",
                style: kBodyText, textDirection: TextDirection.rtl),
          ],
        ),
        SizedBox(height: 8),
        Column(
          children: <Widget>[
            MatchesTimeContainer(),
            MatchesTimeContainer(),
            MatchesTimeContainer(),
          ],
        ),
      ],
    );
  }
}

class MatchesTimeContainer extends StatelessWidget {
  const MatchesTimeContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 2),
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Image.asset('assets/logo-club-foot-png-2.png'),
              SizedBox(width: 5),
              Text("الأهلى",
                  style: kBodyText, textDirection: TextDirection.rtl),
            ],
          ),
          Column(
            children: <Widget>[
              Text("22:00", style: kBodyText),
              Text("الخميس 15 يوليو",
                  style: kBodyText.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w100)),
            ],
          ),
          Row(
            children: <Widget>[
              Text("الأهلى",
                  style: kBodyText, textDirection: TextDirection.rtl),
              SizedBox(width: 5),
              Image.asset('assets/logo-club-foot-png-2.png'),
            ],
          ),
        ],
      ),
    );
  }
}

class LatestNewsColumn extends StatelessWidget {
  const LatestNewsColumn({
    Key key,
    @required this.x,
  }) : super(key: key);

  final double x;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("المزيد",
                style: kBodyText.copyWith(color: Colors.blue),
                textDirection: TextDirection.rtl),
            Text("اخر الأخبار",
                style: kBodyText, textDirection: TextDirection.rtl),
          ],
        ),
        SizedBox(height: 8),
        Container(
          height: 0.6 * x,
          child: ImagesStack(
            logo: AssetImage('assets/Group545.png'),
            image: AssetImage('assets/img.png'),
          ),
        ),
        SizedBox(height: 8),
        RichText(
          textDirection: TextDirection.rtl,
          softWrap: true,
          text: TextSpan(
            style: kBodyText,
            children: [
              TextSpan(text: "الدوري الرياضي \n"),
              TextSpan(
                text: "من الملاعب السعودية إلى منصة التتويج بكأس العالم.. \n",
                style: kBodyText.copyWith(
                    fontSize: 14, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
