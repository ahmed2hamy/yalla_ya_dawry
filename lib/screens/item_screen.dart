import 'package:flutter/material.dart';

import '../constants.dart';

class ItemScreen extends StatelessWidget {
  final ImageProvider image;

  const ItemScreen({Key key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double x = MediaQuery.of(context).size.width;
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            elevation: 12,
            flexibleSpace: FlexibleSpaceBar(
              background: Image(image: image, fit: BoxFit.fill),
            ),
            expandedHeight: 0.8 * x,
            leading: IconButton(
                icon: ImageIcon(AssetImage('assets/Fill67.png'),
                    color: Colors.white),
                onPressed: () {}),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: () => Navigator.pop(context)),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "عيش البورجوازية عيش قلق،"
                    " تتفجّر فيه الفتن والفورات، تطغى عليه العيون الحاسدة والعوارض الفاسدة،"
                    " تتصارع طوائفه ليس صراع الثيران: بل صراع الأرانب والأسود"
                    " (وهي بدورها أصناف وطبقات: الغضنفر، اللبوة، الشبل، السبع،"
                    " وأخيراً وليس آخراً الفصل السوري..).\n إلا أنه عيش قد تطورت فيه آليات الكبت،"
                    " الى جانب أجهزة الحكم والصمت، علّه يواظب على رتابته الرزينة،"
                    " وكبائره المشينة الحزينة.\n لم نجئ الى هنا اليوم من أجل مقاومة هذه الجرائم،"
                    " لم نأتي كي نتصدّى لها في القرى كما في العواصم.\n"
                    " كما أننا ليس قصدنا أن ننصّب الحاج أحمد قائدنا العظيم،"
                    " بطلنا الحكيم، في مواجهتنا المظالم المعروفة والمصاعب المعهودة،"
                    " المتفق عليها..\n إنما وجدنا في بعض ما كتبه، ليس باباً بل أكرة باب،"
                    " وليس مفتاحاً بل بطاقة مالية توافي بالمهمة، وقول يا مسهّل! \n"
                    "عيش البورجوازية عيش قلق،"
                    " تتفجّر فيه الفتن والفورات، تطغى عليه العيون الحاسدة والعوارض الفاسدة،"
                    " تتصارع طوائفه ليس صراع الثيران: بل صراع الأرانب والأسود"
                    " (وهي بدورها أصناف وطبقات: الغضنفر، اللبوة، الشبل، السبع،"
                    " وأخيراً وليس آخراً الفصل السوري..).\n إلا أنه عيش قد تطورت فيه آليات الكبت،"
                    " الى جانب أجهزة الحكم والصمت، علّه يواظب على رتابته الرزينة،"
                    " وكبائره المشينة الحزينة.\n لم نجئ الى هنا اليوم من أجل مقاومة هذه الجرائم،"
                    " لم نأتي كي نتصدّى لها في القرى كما في العواصم.\n"
                    " كما أننا ليس قصدنا أن ننصّب الحاج أحمد قائدنا العظيم،"
                    " بطلنا الحكيم، في مواجهتنا المظالم المعروفة والمصاعب المعهودة،"
                    " المتفق عليها..\n إنما وجدنا في بعض ما كتبه، ليس باباً بل أكرة باب،"
                    " وليس مفتاحاً بل بطاقة مالية توافي بالمهمة، وقول يا مسهّل! ",
                    style: kBodyText.copyWith(fontSize: 18),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
