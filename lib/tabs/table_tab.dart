import 'package:flutter/material.dart';

import '../componants/item_builder.dart';
import '../services/network.dart';
import '../services/serialisation.dart';

class TableTab extends StatelessWidget {
  final Network _network = Network();

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
      body: FutureBuilder(
        future: _network.getUsers(),
        builder: (context, snapshot) {
          UsersList users = snapshot.data;
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: users.data.length + 1,
                itemBuilder: (context, index) {
                  if (index == users.data.length) {
                    return Center(
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                                icon: Icon(Icons.arrow_back_ios),
                                onPressed: () {}),
                            SizedBox(width: 3),
                            Text(
                              "Page ${users.page} of ${users.totalPages}",
                            ),
                            SizedBox(width: 3),
                            IconButton(
                                icon: Icon(Icons.arrow_forward_ios),
                                onPressed: () {}),
                          ],
                        ),
                      ),
                    );
                  } else {
                    return ItemBuilder(index: index, users: users);
                  }
                });
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
