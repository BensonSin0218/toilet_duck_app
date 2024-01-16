class User {
  String? username;
  String? userPassword;
  String? userImagePath;
  String? firstName;
  String? lastName;
  String? email;
  String? phone;

  User({
    this.username,
    this.userPassword,
    this.userImagePath,
    this.firstName,
    this.lastName,
    this.email,
    this.phone
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic> {
      "username": username,
      "userPassword": userPassword,
      "userImagePath": userImagePath,
      "firstName": firstName,
      "lastName": lastName,
      "email": email,
      "phone": phone
    };
  }

  static User fromJson(Map<String, dynamic> json) => User(
    username: json["username"] ?? "",
    userPassword: json["userPassword"] ?? "",
    userImagePath: json["userImagePath"] ?? "",
    firstName: json["firstName"] ?? "",
    lastName: json["lastName"] ?? "",
    email: json["email"] ?? "",
    phone: json["phone"] ?? ""
  );
}