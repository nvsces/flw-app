import 'dart:convert';

class UserModel {
  String name;
  int vkId;
  String photoUrl;
  String accessToken;
  UserModel({
    required this.name,
    required this.vkId,
    required this.photoUrl,
    required this.accessToken,
  });

  UserModel copyWith({
    String? name,
    int? vkId,
    String? photoUrl,
    String? accessToken,
  }) {
    return UserModel(
      name: name ?? this.name,
      vkId: vkId ?? this.vkId,
      photoUrl: photoUrl ?? this.photoUrl,
      accessToken: accessToken ?? this.accessToken,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'user_vk_id': vkId,
      'photo_url': photoUrl,
      'access_token': accessToken,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'] ?? '',
      vkId: map['vkId']?.toInt() ?? 0,
      photoUrl: map['photoUrl'] ?? '',
      accessToken: map['accessToken'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserMode(name: $name, vkId: $vkId, photoUrl: $photoUrl, accessToken: $accessToken)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserModel &&
        other.name == name &&
        other.vkId == vkId &&
        other.photoUrl == photoUrl &&
        other.accessToken == accessToken;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        vkId.hashCode ^
        photoUrl.hashCode ^
        accessToken.hashCode;
  }
}
