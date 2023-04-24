import 'dart:convert';

class SearchTraderModel {
  final String name;
  final String userName;
  final String profileImageUrl;

  SearchTraderModel({
    required this.name,
    required this.userName,
    required this.profileImageUrl,
  });

  SearchTraderModel copyWith({
    required String name,
    required String userName,
    required String profileImageUrl,
  }) {
    return SearchTraderModel(
      name: name,
      userName: userName,
      profileImageUrl: profileImageUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'userName': userName,
      'profileImageUrl': profileImageUrl,
    };
  }

  static SearchTraderModel fromMap(Map<String, dynamic> map) {
    return SearchTraderModel(
      name: map['name'],
      userName: map['userName'],
      profileImageUrl: map['profileImageUrl'],
    );
  }

  String toJson() => json.encode(toMap());

  static SearchTraderModel fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(name: $name,userName: $userName, profileImageUrl: $profileImageUrl,)';
  }

  @override
  bool operator == (Object o) {
    if (identical(this, o)) return true;

    return o is SearchTraderModel &&
        o.name == name &&
        o.userName == userName &&
        o.profileImageUrl == profileImageUrl;
  }

  @override
  int get hashCode {
    return name.hashCode ^ userName.hashCode ^ profileImageUrl.hashCode;
  }
}