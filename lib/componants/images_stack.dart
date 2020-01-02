import 'package:flutter/material.dart';

class ImagesStack extends StatelessWidget {
  final ImageProvider image;
  final ImageProvider logo;

  const ImagesStack({Key key, this.image, this.logo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: <Widget>[
        Container(
            decoration: BoxDecoration(
          image: DecorationImage(image: image, fit: BoxFit.fill),
        )),
        Positioned(
            height: 50,
            width: 50,
            child: Align(
                alignment: Alignment.bottomRight,
                child: Image(
                  image: logo,
                  fit: BoxFit.scaleDown,
                ))),
      ],
    );
  }
}
