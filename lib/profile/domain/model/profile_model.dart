import 'dart:convert';

class ProfileModel {
  String name;
  int vkId;
  String photoUrl;
  ProfileModel({
    required this.name,
    required this.vkId,
    required this.photoUrl,
  });

  ProfileModel copyWith({
    String? name,
    int? vkId,
    String? photoUrl,
  }) {
    return ProfileModel(
      name: name ?? this.name,
      vkId: vkId ?? this.vkId,
      photoUrl: photoUrl ?? this.photoUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'user_vk_id': vkId,
      'photo_url': photoUrl,
    };
  }

  factory ProfileModel.fromMap(Map<String, dynamic> map) {
    return ProfileModel(
      name: map['name'] ?? '',
      vkId: map['user_vk_id']?.toInt() ?? 0,
      photoUrl: map['photo_url'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ProfileModel.fromJson(String source) =>
      ProfileModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'ProfileModel(name: $name, vkId: $vkId, photoUrl: $photoUrl)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProfileModel &&
        other.name == name &&
        other.vkId == vkId &&
        other.photoUrl == photoUrl;
  }

  @override
  int get hashCode => name.hashCode ^ vkId.hashCode ^ photoUrl.hashCode;
}
