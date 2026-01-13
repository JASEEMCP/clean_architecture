import 'package:json_annotation/json_annotation.dart';

part 'user_list_model.g.dart';

@JsonSerializable()
class UserListModel {
  int? id;
  String? level;
  String? name;
  @JsonKey(name: 'total_work')
  int? totalWork;
  @JsonKey(name: 'phone_number')
  String? phoneNumber;
  dynamic rating;

  UserListModel({
    this.id,
    this.level,
    this.name,
    this.totalWork,
    this.phoneNumber,
    this.rating,
  });

  factory UserListModel.fromJson(Map<String, dynamic> json) {
    return _$UserListModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserListModelToJson(this);
}
