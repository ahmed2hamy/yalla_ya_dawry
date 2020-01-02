import 'package:flutter/material.dart';

import '../services/serialisation.dart';

class ItemBuilder extends StatelessWidget {
  final int index;
  final UsersList users;

  const ItemBuilder({Key key, this.index, this.users}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var userData = users.data[index];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: Card(
        color: Colors.white,
        clipBehavior: Clip.antiAlias,
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(userData.avatar),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.alternate_email, color: Colors.white),
                    Text('${userData.firstName} ${userData.lastName}',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20)),
                  ],
                ),
                SizedBox(height: 6),
                Row(
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    Icon(Icons.alternate_email),
                    Text('${userData.email}'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
