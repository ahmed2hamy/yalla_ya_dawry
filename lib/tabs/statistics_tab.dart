import 'package:flutter/material.dart';

class StatisticsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
    );
  }
}
