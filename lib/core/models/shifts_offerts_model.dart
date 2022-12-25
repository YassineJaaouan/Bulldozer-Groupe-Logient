class ShiftsOffertsModel {
  List<Data>? data;
  Links? links;
  Meta? meta;

  ShiftsOffertsModel({this.data, this.links, this.meta});

  ShiftsOffertsModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
    links = json['links'] != null ?  Links.fromJson(json['links']) : null;
    meta = json['meta'] != null ?  Meta.fromJson(json['meta']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    if (this.links != null) {
      data['links'] = this.links!.toJson();
    }
    if (this.meta != null) {
      data['meta'] = this.meta!.toJson();
    }
    return data;
  }

  @override
  String toString() {
    // TODO: implement toString
    return "ShiftsOffertsModel{data: $data, link: $links, meta:$meta}";
  }

}

class Data {
  int? id;
  String? status;
  String? startAt;
  String? endAt;
  String? postName;
  int? postId;
  bool? startSoon;
  Recurring? recurring;
  String? company;
  String? buyPrice;
  int? bonus;
  double? latitude;
  double? longitude;

  Data(
      {this.id,
        this.status,
        this.startAt,
        this.endAt,
        this.postName,
        this.postId,
        this.startSoon,
        this.recurring,
        this.company,
        this.buyPrice,
        this.bonus,
        this.latitude,
        this.longitude});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    status = json['status'];
    startAt = json['start_at'];
    endAt = json['end_at'];
    postName = json['post_name'];
    postId = json['post_id'];
    startSoon = json['start_soon'];
    recurring = json['recurring'] != null
        ?  Recurring.fromJson(json['recurring'])
        : null;
    company = json['company'];
    buyPrice = json['buy_price'];
    bonus = json['bonus'];
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['id'] = this.id;
    data['status'] = this.status;
    data['start_at'] = this.startAt;
    data['end_at'] = this.endAt;
    data['post_name'] = this.postName;
    data['post_id'] = this.postId;
    data['start_soon'] = this.startSoon;
    if (this.recurring != null) {
      data['recurring'] = this.recurring!.toJson();
    }
    data['company'] = this.company;
    data['buy_price'] = this.buyPrice;
    data['bonus'] = this.bonus;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    return data;
  }

  @override
  String toString() {
    // TODO: implement toString
    return "Data{id: $id, status: $status, postName:$postName}";
  }

}

class Recurring {
  int? id;
  String? startAt;
  String? endAt;
  bool? isAvailable;

  Recurring({this.id, this.startAt, this.endAt, this.isAvailable});

  Recurring.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    startAt = json['start_at'];
    endAt = json['end_at'];
    isAvailable = json['is_available'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['id'] = this.id;
    data['start_at'] = this.startAt;
    data['end_at'] = this.endAt;
    data['is_available'] = this.isAvailable;
    return data;
  }
}

class Links {
  String? first;
  String? last;
  Null? prev;
  String? next;

  Links({this.first, this.last, this.prev, this.next});

  Links.fromJson(Map<String, dynamic> json) {
    first = json['first'];
    last = json['last'];
    prev = json['prev'];
    next = json['next'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['first'] = this.first;
    data['last'] = this.last;
    data['prev'] = this.prev;
    data['next'] = this.next;
    return data;
  }

  @override
  String toString() {
    // TODO: implement toString
    return "Links{first: $first, last: $last, prev:$prev}";
  }

}

class Meta {
  int? currentPage;
  int? from;
  int? lastPage;
  String? path;
  int? perPage;
  int? to;
  int? total;

  Meta(
      {this.currentPage,
        this.from,
        this.lastPage,
        this.path,
        this.perPage,
        this.to,
        this.total});

  Meta.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    from = json['from'];
    lastPage = json['last_page'];
    path = json['path'];
    perPage = json['per_page'];
    to = json['to'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['current_page'] = this.currentPage;
    data['from'] = this.from;
    data['last_page'] = this.lastPage;
    data['path'] = this.path;
    data['per_page'] = this.perPage;
    data['to'] = this.to;
    data['total'] = this.total;
    return data;
  }
}
