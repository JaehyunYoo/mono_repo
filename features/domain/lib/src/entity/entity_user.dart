///
/// Example
///

import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_user.freezed.dart';
part 'entity_user.g.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String name,
    required String age,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, Object?> json)
      => _$UserEntityFromJson(json);
}
