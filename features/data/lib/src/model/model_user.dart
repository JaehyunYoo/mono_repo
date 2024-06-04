///
/// @ Example
/// https://dartj.web.app/ fromJson toJson template go
///
class UserModel {
  String? name;
  String? age;

  UserModel({
    this.name,
    this.age,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
    };
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'] as String?,
      age: json['age'] as String?,
    );
  }

}
