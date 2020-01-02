class UsersList {
  int page;
  int perPage;
  int total;
  int totalPages;
  List<Data> data;

  UsersList({this.page, this.perPage, this.total, this.totalPages, this.data});

  UsersList.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    perPage = json['per_page'];
    total = json['total'];
    totalPages = json['total_pages'];
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['page'] = this.page;
    data['per_page'] = this.perPage;
    data['total'] = this.total;
    data['total_pages'] = this.totalPages;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int id;
  String email;
  String firstName;
  String lastName;
  String avatar;

  Data({this.id, this.email, this.firstName, this.lastName, this.avatar});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    avatar = json['avatar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['email'] = this.email;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['avatar'] = this.avatar;
    return data;
  }
}
