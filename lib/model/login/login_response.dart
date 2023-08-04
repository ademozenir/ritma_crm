class LoginResponse {
  final int id;
  final String name;
  final String contactName;
  final int contactId;
  final int subscriberId;
  final String title;
  final int roleId;
  final int isAdmin;
  final String email;
  final String username;
  final String nameSurname;
  final String image;
  final String mobilePhone1;
  final String mobilePhone2;
  final int isLoginable;
  final String token;

  LoginResponse.fromJson(Map<String, dynamic> map)
      : id = map["id"],
        name = map["name"],
        contactName = map["contactName"],
        contactId = map["contactId"],
        subscriberId = map["subscriberId"],
        title = map["title"],
        roleId = map["roleId"],
        isAdmin = map["isAdmin"],
        email = map["email"],
        username = map["username"],
        nameSurname = map["nameSurname"] ?? "",
        image = map["image"],
        mobilePhone1 = map["mobilePhone1"] ?? "",
        mobilePhone2 = map["mobilePhone2"] ?? "",
        isLoginable = map["isLoginable"],
        token = map["token"];

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "contactName": contactName,
        "contactId": contactId,
        "subscriberId": subscriberId,
        "title": title,
        "roleId": roleId,
        "isAdmin": isAdmin,
        "email": email,
        "username": username,
        "nameSurname": nameSurname,
        "image": image,
        "mobilePhone1": mobilePhone1,
        "mobilePhone2": mobilePhone2,
        "isLoginable": isLoginable,
        "token": token,
      };
}
