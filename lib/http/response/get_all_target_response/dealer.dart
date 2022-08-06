class Dealer {
  int? id;
  String? name;
  String? email;
  int? target;

  Dealer({this.id, this.name, this.email, this.target});

  factory Dealer.fromJson(Map<String, dynamic> json) => Dealer(
        id: json['id'] as int?,
        name: json['name'] as String?,
        email: json['email'] as String?,
        target: json['target'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
        'target': target,
      };
}
