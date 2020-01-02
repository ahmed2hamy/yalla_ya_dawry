import 'package:flutter/material.dart';

import './images_stack.dart';
import '../constants.dart';
import '../screens/item_screen.dart';

class Items extends StatelessWidget {
  final ImageProvider image;

  const Items({Key key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double x = MediaQuery.of(context).size.width;

    return ListTile(
      title: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Container(
          height: 0.3 * x,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: RichText(
                    textDirection: TextDirection.rtl,
                    softWrap: true,
                    text: TextSpan(
                      style: kBodyText,
                      children: [
                        TextSpan(text: "الدوري الرياضي \n"),
                        TextSpan(
                          text:
                              "من الملاعب السعودية إلى منصة التتويج بكأس العالم.. \n",
                          style: kBodyText.copyWith(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        TextSpan(text: " 12 يوليو 2018 \n"),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: ImagesStack(
                  logo: AssetImage('assets/Group545.png'),
                  image: image,
                ),
              ),
            ],
          ),
        ),
      ),
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ItemScreen(image: image)));
      },
    );
  }
}
