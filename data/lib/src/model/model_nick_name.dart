///
/// @ Example
/// https://dartj.web.app/ fromJson toJson template go
///
class UserNickNameModel {
  String? name;

  UserNickNameModel({
    this.name,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
    };
  }

  factory UserNickNameModel.fromJson(Map<String, dynamic> json) {
    return UserNickNameModel(
      name: json['name'] as String?,
    );
  }

  @override
  String toString() => "UserNickNameModel(name: $name)";

}
