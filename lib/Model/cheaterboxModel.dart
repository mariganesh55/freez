class CheaterBox {
  CheaterBox({
    required this.cheaterBoxData,
  });
  List<CheaterBoxData>? cheaterBoxData;

  CheaterBox.fromJson(Map<String, dynamic> json) {
    cheaterBoxData = List.from(json['cheaterBoxData'])
        .map((e) => CheaterBoxData.fromJson(e))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['cheaterBoxData'] = cheaterBoxData!.map((e) => e.toJson()).toList();
    return _data;
  }
}

class CheaterBoxData {
  CheaterBoxData({
    required this.img,
    required this.userImg,
    required this.id,
    required this.description,
    required this.email,
    required this.userId,
    required this.name,
    required this.likes,
    required this.comments,
    required this.cheaterBoxID,
    required this.V,
    required this.shares,
  });
  late final Img img;
  late final UserImg userImg;
  late final String id;
  late final String description;
  late final String email;
  late final String userId;
  late final String name;
  late final List<Likes> likes;
  late final List<Comments> comments;
  late final String cheaterBoxID;
  late final int V;
  late final List<Shares> shares;

  CheaterBoxData.fromJson(Map<String, dynamic> json) {
    img = Img.fromJson(json['img']);
    userImg = UserImg.fromJson(json['user_img']);
    id = json['id'];
    description = json['description'];
    email = json['email'];
    userId = json['userId'];
    name = json['name'];
    likes = List.from(json['likes']).map((e) => Likes.fromJson(e)).toList();
    comments =
        List.from(json['comments']).map((e) => Comments.fromJson(e)).toList();
    cheaterBoxID = json['cheaterBoxID'];
    V = json['__v'];
    shares = List.from(json['shares']).map((e) => Shares.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['img'] = img.toJson();
    _data['user_img'] = userImg.toJson();
    _data['_id'] = id;
    _data['description'] = description;
    _data['email'] = email;
    _data['userId'] = userId;
    _data['name'] = name;
    _data['likes'] = likes.map((e) => e.toJson()).toList();
    _data['comments'] = comments.map((e) => e.toJson()).toList();
    _data['cheaterBoxID'] = cheaterBoxID;
    _data['__v'] = V;
    _data['shares'] = shares.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Img {
  Img({
    required this.data,
    required this.contentType,
  });
  late final Data data;
  late final String contentType;

  Img.fromJson(Map<String, dynamic> json) {
    data = Data.fromJson(json['data']);
    contentType = json['contentType'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['data'] = data.toJson();
    _data['contentType'] = contentType;
    return _data;
  }
}

class Data {
  Data({
    required this.type,
    required this.data,
  });
  late final String type;
  late final List<int> data;

  Data.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    data = List.castFrom<dynamic, int>(json['data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['type'] = type;
    _data['data'] = data;
    return _data;
  }
}

class UserImg {
  UserImg({
    required this.data,
    required this.contentType,
  });
  late final Data data;
  late final String contentType;

  UserImg.fromJson(Map<String, dynamic> json) {
    data = Data.fromJson(json['data']);
    contentType = json['contentType'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['data'] = data.toJson();
    _data['contentType'] = contentType;
    return _data;
  }
}

class Likes {
  Likes({
    required this.email,
    required this.name,
    required this.userId,
  });
  late final String email;
  late final String name;
  late final int userId;

  Likes.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    name = json['name'];
    userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['email'] = email;
    _data['name'] = name;
    _data['userId'] = userId;
    return _data;
  }
}

class Comments {
  Comments({
    required this.email,
    required this.name,
    required this.userId,
    required this.comments,
    required this.commenterImg,
  });
  late final String email;
  late final String name;
  late final int userId;
  late final String comments;
  late final CommenterImg commenterImg;

  Comments.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    name = json['name'];
    userId = json['userId'];
    comments = json['comments'];
    commenterImg = CommenterImg.fromJson(json['commenter_img']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['email'] = email;
    _data['name'] = name;
    _data['userId'] = userId;
    _data['comments'] = comments;
    _data['commenter_img'] = commenterImg.toJson();
    return _data;
  }
}

class CommenterImg {
  CommenterImg({
    required this.data,
    required this.contentType,
  });
  late final String data;
  late final String contentType;

  CommenterImg.fromJson(Map<String, dynamic> json) {
    data = json['data'];
    contentType = json['contentType'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['data'] = data;
    _data['contentType'] = contentType;
    return _data;
  }
}

class Shares {
  Shares({
    required this.email,
    required this.name,
    required this.userId,
  });
  late final String email;
  late final String name;
  late final int userId;

  Shares.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    name = json['name'];
    userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['email'] = email;
    _data['name'] = name;
    _data['userId'] = userId;
    return _data;
  }
}
