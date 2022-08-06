class Government {
  int? id;
  String? name;
  String? email;
  int? target;

  Government({this.id, this.name, this.email, this.target});

  factory Government.fromJson(Map<String, dynamic> json) => Government(
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
