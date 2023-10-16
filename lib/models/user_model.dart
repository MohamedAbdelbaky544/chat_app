class UserModel {
  const UserModel({required this.name, required this.email, required this.uid});
  final String name;
  final String email;
  final String uid;

  factory UserModel.fromjson(Map<String, dynamic> json) => UserModel(
        name: json['name'],
        email: json['email'],
        uid: json['uid'],
      );

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'uid': uid,
    };
  }
}
