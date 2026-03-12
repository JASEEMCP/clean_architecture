import 'package:json_annotation/json_annotation.dart';

part 'token.g.dart';

@JsonSerializable()
class Token {
  @JsonKey(name: 'refresh')
  String? refreshToken;
  @JsonKey(name: 'access')
  String? accessToken;
  @JsonKey(name: 'user_type')
  String? userType;

  Token({this.refreshToken, this.accessToken, this.userType});

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);

  Map<String, dynamic> toJson() => _$TokenToJson(this);

  Token copyWith({
    String? refreshToken,
    String? accessToken,
    String? userType,
  }) {
    return Token(
      refreshToken: refreshToken ?? this.refreshToken,
      accessToken: accessToken ?? this.accessToken,
      userType: userType ?? this.userType,
    );
  }
}
