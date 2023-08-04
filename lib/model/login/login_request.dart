
class LoginRequest {
  LoginRequest(this.userName, this.value, this.ownerId);

  final String userName;
  final String value;
  final int ownerId;

  LoginRequest.fromJson(Map<String, dynamic> map)
      : userName = map["userName"],
        value = map["value"],
        ownerId = map["ownerId"];

  Map<String, dynamic> toJson() => {
    "userName": userName,
    "value": value,
    "ownerId": ownerId,
  };
}
