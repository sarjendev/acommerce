import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    this.image,
    required this.id,
    this.address,
    required this.name,
    required this.email,
  });

  String? image;
  String name;
  String email;
  String? address;

  String id;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        address: json['address'],
        image: json["image"],
        email: json["email"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "address": address,
        "image": image,
        "name": name,
        "email": email,
      };

  UserModel copyWith({
    String? name,
    String? address,
    image,
  }) =>
      UserModel(
        id: id,
        address: address ?? this.address,
        name: name ?? this.name,
        email: email,
        image: image ?? this.image,
      );
}
