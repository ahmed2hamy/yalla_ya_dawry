import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

import '../services/serialisation.dart';

const String url = 'https://reqres.in/api/users#';

class Network {
  Future<UsersList> getUsers() async {
    final response = await http.get(url);
    if (response.statusCode == 200) {
      UsersList list = UsersList.fromJson(convert.jsonDecode(response.body));
      return list;
    } else {
      throw ("Users List Request failed with status: ${response.statusCode}.");
    }
  }
}
